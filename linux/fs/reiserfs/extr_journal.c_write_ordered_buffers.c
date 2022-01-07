
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reiserfs_journal_list {int dummy; } ;
struct reiserfs_journal {int j_errno; } ;
struct reiserfs_jh {struct buffer_head* bh; int list; } ;
struct list_head {int prev; int next; } ;
struct buffer_head {TYPE_1__* b_page; } ;
struct buffer_chunk {scalar_t__ nr; } ;
typedef int spinlock_t ;
struct TYPE_2__ {int * mapping; } ;


 int EIO ;
 int INIT_LIST_HEAD (struct list_head*) ;
 struct reiserfs_jh* JH_ENTRY (int ) ;
 int REQ_OP_WRITE ;
 int add_to_chunk (struct buffer_chunk*,struct buffer_head*,int *,int (*) (struct buffer_chunk*)) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_locked (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int cond_resched () ;
 int cond_resched_lock (int *) ;
 int get_bh (struct buffer_head*) ;
 int list_empty (struct list_head*) ;
 int list_move (int *,struct list_head*) ;
 int ll_rw_block (int ,int ,int,struct buffer_head**) ;
 int put_bh (struct buffer_head*) ;
 int reiserfs_free_jh (struct buffer_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trylock_buffer (struct buffer_head*) ;
 scalar_t__ unlikely (int ) ;
 int unlock_buffer (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;
 int write_ordered_chunk (struct buffer_chunk*) ;

__attribute__((used)) static int write_ordered_buffers(spinlock_t * lock,
     struct reiserfs_journal *j,
     struct reiserfs_journal_list *jl,
     struct list_head *list)
{
 struct buffer_head *bh;
 struct reiserfs_jh *jh;
 int ret = j->j_errno;
 struct buffer_chunk chunk;
 struct list_head tmp;
 INIT_LIST_HEAD(&tmp);

 chunk.nr = 0;
 spin_lock(lock);
 while (!list_empty(list)) {
  jh = JH_ENTRY(list->next);
  bh = jh->bh;
  get_bh(bh);
  if (!trylock_buffer(bh)) {
   if (!buffer_dirty(bh)) {
    list_move(&jh->list, &tmp);
    goto loop_next;
   }
   spin_unlock(lock);
   if (chunk.nr)
    write_ordered_chunk(&chunk);
   wait_on_buffer(bh);
   cond_resched();
   spin_lock(lock);
   goto loop_next;
  }





  if (!buffer_uptodate(bh) && buffer_dirty(bh)) {
   clear_buffer_dirty(bh);
   ret = -EIO;
  }
  if (buffer_dirty(bh)) {
   list_move(&jh->list, &tmp);
   add_to_chunk(&chunk, bh, lock, write_ordered_chunk);
  } else {
   reiserfs_free_jh(bh);
   unlock_buffer(bh);
  }
loop_next:
  put_bh(bh);
  cond_resched_lock(lock);
 }
 if (chunk.nr) {
  spin_unlock(lock);
  write_ordered_chunk(&chunk);
  spin_lock(lock);
 }
 while (!list_empty(&tmp)) {
  jh = JH_ENTRY(tmp.prev);
  bh = jh->bh;
  get_bh(bh);
  reiserfs_free_jh(bh);

  if (buffer_locked(bh)) {
   spin_unlock(lock);
   wait_on_buffer(bh);
   spin_lock(lock);
  }
  if (!buffer_uptodate(bh)) {
   ret = -EIO;
  }
  if (buffer_dirty(bh) && unlikely(bh->b_page->mapping == ((void*)0))) {
   spin_unlock(lock);
   ll_rw_block(REQ_OP_WRITE, 0, 1, &bh);
   spin_lock(lock);
  }
  put_bh(bh);
  cond_resched_lock(lock);
 }
 spin_unlock(lock);
 return ret;
}

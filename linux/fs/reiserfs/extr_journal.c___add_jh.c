
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reiserfs_journal {int j_dirty_buffers_lock; TYPE_1__* j_current_jl; } ;
struct reiserfs_jh {TYPE_1__* jl; int list; struct buffer_head* bh; } ;
struct buffer_head {struct reiserfs_jh* b_private; } ;
struct TYPE_2__ {int j_bh_list; int j_tail_bh_list; } ;


 int BUG_ON (struct reiserfs_jh*) ;
 struct reiserfs_jh* alloc_jh () ;
 int get_bh (struct buffer_head*) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline int __add_jh(struct reiserfs_journal *j, struct buffer_head *bh,
      int tail)
{
 struct reiserfs_jh *jh;

 if (bh->b_private) {
  spin_lock(&j->j_dirty_buffers_lock);
  if (!bh->b_private) {
   spin_unlock(&j->j_dirty_buffers_lock);
   goto no_jh;
  }
  jh = bh->b_private;
  list_del_init(&jh->list);
 } else {
no_jh:
  get_bh(bh);
  jh = alloc_jh();
  spin_lock(&j->j_dirty_buffers_lock);




  BUG_ON(bh->b_private);
  jh->bh = bh;
  bh->b_private = jh;
 }
 jh->jl = j->j_current_jl;
 if (tail)
  list_add_tail(&jh->list, &jh->jl->j_tail_bh_list);
 else {
  list_add_tail(&jh->list, &jh->jl->j_bh_list);
 }
 spin_unlock(&j->j_dirty_buffers_lock);
 return 0;
}

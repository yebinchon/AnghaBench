
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct reiserfs_journal {int j_dirty_buffers_lock; } ;
struct inode {int i_sb; } ;
struct buffer_head {int * b_bdev; int b_assoc_buffers; TYPE_2__* b_page; scalar_t__ b_private; } ;
struct TYPE_4__ {TYPE_1__* mapping; } ;
struct TYPE_3__ {struct inode* host; } ;


 int BUG () ;
 struct reiserfs_journal* SB_JOURNAL (int ) ;
 scalar_t__ buffer_journal_dirty (struct buffer_head*) ;
 scalar_t__ buffer_journaled (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int clear_buffer_mapped (struct buffer_head*) ;
 int clear_buffer_new (struct buffer_head*) ;
 int clear_buffer_req (struct buffer_head*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int lock_buffer (struct buffer_head*) ;
 int reiserfs_free_jh (struct buffer_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_buffer (struct buffer_head*) ;

void reiserfs_unmap_buffer(struct buffer_head *bh)
{
 lock_buffer(bh);
 if (buffer_journaled(bh) || buffer_journal_dirty(bh)) {
  BUG();
 }
 clear_buffer_dirty(bh);





 if ((!list_empty(&bh->b_assoc_buffers) || bh->b_private) && bh->b_page) {
  struct inode *inode = bh->b_page->mapping->host;
  struct reiserfs_journal *j = SB_JOURNAL(inode->i_sb);
  spin_lock(&j->j_dirty_buffers_lock);
  list_del_init(&bh->b_assoc_buffers);
  reiserfs_free_jh(bh);
  spin_unlock(&j->j_dirty_buffers_lock);
 }
 clear_buffer_mapped(bh);
 clear_buffer_req(bh);
 clear_buffer_new(bh);
 bh->b_bdev = ((void*)0);
 unlock_buffer(bh);
}

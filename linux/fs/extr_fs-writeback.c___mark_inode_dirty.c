
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {TYPE_1__* s_op; } ;
struct list_head {int dummy; } ;
struct inode {int i_state; int i_lock; void* dirtied_time_when; void* dirtied_when; int i_mode; struct super_block* i_sb; } ;
struct bdi_writeback {TYPE_2__* bdi; int list_lock; struct list_head b_dirty_time; struct list_head b_dirty; int state; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int (* dirty_inode ) (struct inode*,int) ;} ;


 int I_DIRTY ;
 int I_DIRTY_INODE ;
 int I_DIRTY_TIME ;
 int I_FREEING ;
 int I_SYNC ;
 int S_ISBLK (int ) ;
 int WARN (int,char*,int ) ;
 int WB_registered ;
 scalar_t__ bdi_cap_writeback_dirty (TYPE_2__*) ;
 int block_dump ;
 int block_dump___mark_inode_dirty (struct inode*) ;
 int inode_attach_wb (struct inode*,int *) ;
 int inode_io_list_move_locked (struct inode*,struct bdi_writeback*,struct list_head*) ;
 scalar_t__ inode_unhashed (struct inode*) ;
 void* jiffies ;
 struct bdi_writeback* locked_inode_to_wb_and_lock_list (struct inode*) ;
 int smp_mb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct inode*,int) ;
 int test_bit (int ,int *) ;
 int trace_writeback_dirty_inode (struct inode*,int) ;
 int trace_writeback_dirty_inode_enqueue (struct inode*) ;
 int trace_writeback_dirty_inode_start (struct inode*,int) ;
 int trace_writeback_mark_inode_dirty (struct inode*,int) ;
 scalar_t__ unlikely (int ) ;
 int wb_wakeup_delayed (struct bdi_writeback*) ;

void __mark_inode_dirty(struct inode *inode, int flags)
{
 struct super_block *sb = inode->i_sb;
 int dirtytime;

 trace_writeback_mark_inode_dirty(inode, flags);





 if (flags & (I_DIRTY_INODE | I_DIRTY_TIME)) {
  trace_writeback_dirty_inode_start(inode, flags);

  if (sb->s_op->dirty_inode)
   sb->s_op->dirty_inode(inode, flags);

  trace_writeback_dirty_inode(inode, flags);
 }
 if (flags & I_DIRTY_INODE)
  flags &= ~I_DIRTY_TIME;
 dirtytime = flags & I_DIRTY_TIME;





 smp_mb();

 if (((inode->i_state & flags) == flags) ||
     (dirtytime && (inode->i_state & I_DIRTY_INODE)))
  return;

 if (unlikely(block_dump))
  block_dump___mark_inode_dirty(inode);

 spin_lock(&inode->i_lock);
 if (dirtytime && (inode->i_state & I_DIRTY_INODE))
  goto out_unlock_inode;
 if ((inode->i_state & flags) != flags) {
  const int was_dirty = inode->i_state & I_DIRTY;

  inode_attach_wb(inode, ((void*)0));

  if (flags & I_DIRTY_INODE)
   inode->i_state &= ~I_DIRTY_TIME;
  inode->i_state |= flags;






  if (inode->i_state & I_SYNC)
   goto out_unlock_inode;





  if (!S_ISBLK(inode->i_mode)) {
   if (inode_unhashed(inode))
    goto out_unlock_inode;
  }
  if (inode->i_state & I_FREEING)
   goto out_unlock_inode;





  if (!was_dirty) {
   struct bdi_writeback *wb;
   struct list_head *dirty_list;
   bool wakeup_bdi = 0;

   wb = locked_inode_to_wb_and_lock_list(inode);

   WARN(bdi_cap_writeback_dirty(wb->bdi) &&
        !test_bit(WB_registered, &wb->state),
        "bdi-%s not registered\n", wb->bdi->name);

   inode->dirtied_when = jiffies;
   if (dirtytime)
    inode->dirtied_time_when = jiffies;

   if (inode->i_state & I_DIRTY)
    dirty_list = &wb->b_dirty;
   else
    dirty_list = &wb->b_dirty_time;

   wakeup_bdi = inode_io_list_move_locked(inode, wb,
              dirty_list);

   spin_unlock(&wb->list_lock);
   trace_writeback_dirty_inode_enqueue(inode);







   if (bdi_cap_writeback_dirty(wb->bdi) && wakeup_bdi)
    wb_wakeup_delayed(wb);
   return;
  }
 }
out_unlock_inode:
 spin_unlock(&inode->i_lock);
}

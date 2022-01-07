
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_kernel_op_s {int lock; int waitq; int op_state; int list; } ;


 int OP_VFS_STATE_PURGED ;
 int complete (int *) ;
 int list_del_init (int *) ;
 int op_is_cancel (struct orangefs_kernel_op_s*) ;
 int put_cancel (struct orangefs_kernel_op_s*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline void set_op_state_purged(struct orangefs_kernel_op_s *op)
{
 spin_lock(&op->lock);
 if (unlikely(op_is_cancel(op))) {
  list_del_init(&op->list);
  spin_unlock(&op->lock);
  put_cancel(op);
 } else {
  op->op_state |= OP_VFS_STATE_PURGED;
  complete(&op->waitq);
  spin_unlock(&op->lock);
 }
}

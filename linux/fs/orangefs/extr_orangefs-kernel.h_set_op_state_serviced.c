
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orangefs_kernel_op_s {int waitq; int op_state; } ;


 int OP_VFS_STATE_SERVICED ;
 int complete (int *) ;

__attribute__((used)) static inline void set_op_state_serviced(struct orangefs_kernel_op_s *op)
{
 op->op_state = OP_VFS_STATE_SERVICED;
 complete(&op->waitq);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_operation {int pend_link; int release; int cancel; int processor; int debug_id; int state; int usage; int work; } ;
struct fscache_cookie {int dummy; } ;
typedef int fscache_operation_release_t ;
typedef int fscache_operation_processor_t ;
typedef scalar_t__ fscache_operation_cancel_t ;


 int FSCACHE_OP_ST_INITIALISED ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int atomic_inc_return (int *) ;
 int atomic_set (int *,int) ;
 int fscache_n_op_initialised ;
 int fscache_op_debug_id ;
 int fscache_op_init ;
 int fscache_op_work_func ;
 int fscache_operation_dummy_cancel ;
 int fscache_stat (int *) ;
 int trace_fscache_op (struct fscache_cookie*,struct fscache_operation*,int ) ;

void fscache_operation_init(struct fscache_cookie *cookie,
       struct fscache_operation *op,
       fscache_operation_processor_t processor,
       fscache_operation_cancel_t cancel,
       fscache_operation_release_t release)
{
 INIT_WORK(&op->work, fscache_op_work_func);
 atomic_set(&op->usage, 1);
 op->state = FSCACHE_OP_ST_INITIALISED;
 op->debug_id = atomic_inc_return(&fscache_op_debug_id);
 op->processor = processor;
 op->cancel = cancel ?: fscache_operation_dummy_cancel;
 op->release = release;
 INIT_LIST_HEAD(&op->pend_link);
 fscache_stat(&fscache_n_op_initialised);
 trace_fscache_op(cookie, op, fscache_op_init);
}

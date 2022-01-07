
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long flags; } ;
struct fscache_retrieval {struct fscache_cookie* cookie; int to_do; int start_time; void* context; int end_io_func; struct address_space* mapping; TYPE_1__ op; } ;
struct fscache_cookie {int dummy; } ;
struct address_space {int dummy; } ;
typedef int fscache_rw_complete_t ;


 unsigned long FSCACHE_OP_MYTHREAD ;
 unsigned long FSCACHE_OP_UNUSE_COOKIE ;
 unsigned long FSCACHE_OP_WAITING ;
 int GFP_NOIO ;
 int INIT_LIST_HEAD (int *) ;
 int fscache_do_cancel_retrieval ;
 int fscache_get_context (struct fscache_cookie*,void*) ;
 int fscache_n_retrievals_nomem ;
 int fscache_operation_init (struct fscache_cookie*,TYPE_1__*,int *,int ,int ) ;
 int fscache_release_retrieval_op ;
 int fscache_stat (int *) ;
 int jiffies ;
 struct fscache_retrieval* kzalloc (int,int ) ;

__attribute__((used)) static struct fscache_retrieval *fscache_alloc_retrieval(
 struct fscache_cookie *cookie,
 struct address_space *mapping,
 fscache_rw_complete_t end_io_func,
 void *context)
{
 struct fscache_retrieval *op;


 op = kzalloc(sizeof(*op), GFP_NOIO);
 if (!op) {
  fscache_stat(&fscache_n_retrievals_nomem);
  return ((void*)0);
 }

 fscache_operation_init(cookie, &op->op, ((void*)0),
          fscache_do_cancel_retrieval,
          fscache_release_retrieval_op);
 op->op.flags = FSCACHE_OP_MYTHREAD |
  (1UL << FSCACHE_OP_WAITING) |
  (1UL << FSCACHE_OP_UNUSE_COOKIE);
 op->cookie = cookie;
 op->mapping = mapping;
 op->end_io_func = end_io_func;
 op->context = context;
 op->start_time = jiffies;
 INIT_LIST_HEAD(&op->to_do);




 if (context)
  fscache_get_context(op->cookie, context);
 return op;
}

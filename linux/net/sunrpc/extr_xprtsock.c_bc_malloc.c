
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {size_t rq_callsize; char* rq_rbuffer; scalar_t__ rq_buffer; } ;
struct rpc_buffer {int len; scalar_t__ data; } ;
struct page {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int WARN_ONCE (int,char*,size_t) ;
 struct page* alloc_page (int ) ;
 struct rpc_buffer* page_address (struct page*) ;

__attribute__((used)) static int bc_malloc(struct rpc_task *task)
{
 struct rpc_rqst *rqst = task->tk_rqstp;
 size_t size = rqst->rq_callsize;
 struct page *page;
 struct rpc_buffer *buf;

 if (size > PAGE_SIZE - sizeof(struct rpc_buffer)) {
  WARN_ONCE(1, "xprtsock: large bc buffer request (size %zu)\n",
     size);
  return -EINVAL;
 }

 page = alloc_page(GFP_KERNEL);
 if (!page)
  return -ENOMEM;

 buf = page_address(page);
 buf->len = PAGE_SIZE;

 rqst->rq_buffer = buf->data;
 rqst->rq_rbuffer = (char *)rqst->rq_buffer + rqst->rq_callsize;
 return 0;
}

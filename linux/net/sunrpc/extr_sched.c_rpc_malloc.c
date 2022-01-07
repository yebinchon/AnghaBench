
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_pid; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {size_t rq_callsize; size_t rq_rcvsize; char* rq_rbuffer; scalar_t__ rq_buffer; } ;
struct rpc_buffer {size_t len; scalar_t__ data; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int GFP_NOFS ;
 int GFP_NOWAIT ;
 size_t RPC_BUFFER_MAXSIZE ;
 scalar_t__ RPC_IS_SWAPPER (struct rpc_task*) ;
 int __GFP_MEMALLOC ;
 int __GFP_NOWARN ;
 int dprintk (char*,int ,size_t,struct rpc_buffer*) ;
 struct rpc_buffer* kmalloc (size_t,int) ;
 struct rpc_buffer* mempool_alloc (int ,int) ;
 int rpc_buffer_mempool ;

int rpc_malloc(struct rpc_task *task)
{
 struct rpc_rqst *rqst = task->tk_rqstp;
 size_t size = rqst->rq_callsize + rqst->rq_rcvsize;
 struct rpc_buffer *buf;
 gfp_t gfp = GFP_NOFS;

 if (RPC_IS_SWAPPER(task))
  gfp = __GFP_MEMALLOC | GFP_NOWAIT | __GFP_NOWARN;

 size += sizeof(struct rpc_buffer);
 if (size <= RPC_BUFFER_MAXSIZE)
  buf = mempool_alloc(rpc_buffer_mempool, gfp);
 else
  buf = kmalloc(size, gfp);

 if (!buf)
  return -ENOMEM;

 buf->len = size;
 dprintk("RPC: %5u allocated buffer of size %zu at %p\n",
   task->tk_pid, size, buf);
 rqst->rq_buffer = buf->data;
 rqst->rq_rbuffer = (char *)rqst->rq_buffer + rqst->rq_callsize;
 return 0;
}

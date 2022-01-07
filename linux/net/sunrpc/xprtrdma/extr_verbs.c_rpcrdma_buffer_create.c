
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rep_max_requests; } ;
struct rpcrdma_buffer {int rb_max_requests; int rb_credits; int rb_free_reps; int rb_send_bufs; int rb_allreqs; int rb_refresh_worker; int rb_all_mrs; int rb_mrs; int rb_lock; scalar_t__ rb_bc_srv_max_requests; } ;
struct rpcrdma_xprt {TYPE_1__ rx_ep; struct rpcrdma_buffer rx_buf; } ;
struct rpcrdma_req {int rl_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int RPCRDMA_V1_DEF_INLINE_SIZE ;
 int init_llist_head (int *) ;
 int list_add (int *,int *) ;
 int rpcrdma_buffer_destroy (struct rpcrdma_buffer*) ;
 int rpcrdma_mr_refresh_worker ;
 int rpcrdma_mrs_create (struct rpcrdma_xprt*) ;
 struct rpcrdma_req* rpcrdma_req_create (struct rpcrdma_xprt*,int ,int ) ;
 int rpcrdma_sendctxs_create (struct rpcrdma_xprt*) ;
 int spin_lock_init (int *) ;

int rpcrdma_buffer_create(struct rpcrdma_xprt *r_xprt)
{
 struct rpcrdma_buffer *buf = &r_xprt->rx_buf;
 int i, rc;

 buf->rb_max_requests = r_xprt->rx_ep.rep_max_requests;
 buf->rb_bc_srv_max_requests = 0;
 spin_lock_init(&buf->rb_lock);
 INIT_LIST_HEAD(&buf->rb_mrs);
 INIT_LIST_HEAD(&buf->rb_all_mrs);
 INIT_WORK(&buf->rb_refresh_worker, rpcrdma_mr_refresh_worker);

 rpcrdma_mrs_create(r_xprt);

 INIT_LIST_HEAD(&buf->rb_send_bufs);
 INIT_LIST_HEAD(&buf->rb_allreqs);

 rc = -ENOMEM;
 for (i = 0; i < buf->rb_max_requests; i++) {
  struct rpcrdma_req *req;

  req = rpcrdma_req_create(r_xprt, RPCRDMA_V1_DEF_INLINE_SIZE,
      GFP_KERNEL);
  if (!req)
   goto out;
  list_add(&req->rl_list, &buf->rb_send_bufs);
 }

 buf->rb_credits = 1;
 init_llist_head(&buf->rb_free_reps);

 rc = rpcrdma_sendctxs_create(r_xprt);
 if (rc)
  goto out;

 return 0;
out:
 rpcrdma_buffer_destroy(buf);
 return rc;
}

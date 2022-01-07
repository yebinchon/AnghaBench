
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_serv {int sv_max_mesg; int sv_xdrsize; } ;
struct svc_rqst {void* rq_resp; void* rq_argp; struct svc_pool* rq_pool; struct svc_serv* rq_server; int rq_lock; int rq_flags; } ;
struct svc_pool {int dummy; } ;


 int GFP_KERNEL ;
 int RQ_BUSY ;
 int __set_bit (int ,int *) ;
 void* kmalloc_node (int ,int ,int) ;
 struct svc_rqst* kzalloc_node (int,int ,int) ;
 int spin_lock_init (int *) ;
 int svc_init_buffer (struct svc_rqst*,int ,int) ;
 int svc_rqst_free (struct svc_rqst*) ;

struct svc_rqst *
svc_rqst_alloc(struct svc_serv *serv, struct svc_pool *pool, int node)
{
 struct svc_rqst *rqstp;

 rqstp = kzalloc_node(sizeof(*rqstp), GFP_KERNEL, node);
 if (!rqstp)
  return rqstp;

 __set_bit(RQ_BUSY, &rqstp->rq_flags);
 spin_lock_init(&rqstp->rq_lock);
 rqstp->rq_server = serv;
 rqstp->rq_pool = pool;

 rqstp->rq_argp = kmalloc_node(serv->sv_xdrsize, GFP_KERNEL, node);
 if (!rqstp->rq_argp)
  goto out_enomem;

 rqstp->rq_resp = kmalloc_node(serv->sv_xdrsize, GFP_KERNEL, node);
 if (!rqstp->rq_resp)
  goto out_enomem;

 if (!svc_init_buffer(rqstp, serv->sv_max_mesg, node))
  goto out_enomem;

 return rqstp;
out_enomem:
 svc_rqst_free(rqstp);
 return ((void*)0);
}

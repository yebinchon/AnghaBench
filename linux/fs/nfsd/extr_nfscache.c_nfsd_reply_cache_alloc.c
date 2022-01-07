
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; } ;
struct svc_rqst {TYPE_1__ rq_arg; int rq_vers; int rq_prot; int rq_proc; int rq_xid; } ;
struct TYPE_4__ {int k_csum; int k_len; int k_vers; int k_prot; int k_addr; int k_proc; int k_xid; } ;
struct svc_cacherep {TYPE_2__ c_key; int c_lru; int c_node; int c_type; int c_state; } ;
struct sockaddr {int dummy; } ;
struct nfsd_net {int drc_slab; } ;
typedef int __wsum ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RB_CLEAR_NODE (int *) ;
 int RC_NOCACHE ;
 int RC_UNUSED ;
 struct svc_cacherep* kmem_cache_alloc (int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int rpc_copy_addr (struct sockaddr*,int ) ;
 int rpc_get_port (int ) ;
 int rpc_set_port (struct sockaddr*,int ) ;
 int svc_addr (struct svc_rqst*) ;

__attribute__((used)) static struct svc_cacherep *
nfsd_reply_cache_alloc(struct svc_rqst *rqstp, __wsum csum,
   struct nfsd_net *nn)
{
 struct svc_cacherep *rp;

 rp = kmem_cache_alloc(nn->drc_slab, GFP_KERNEL);
 if (rp) {
  rp->c_state = RC_UNUSED;
  rp->c_type = RC_NOCACHE;
  RB_CLEAR_NODE(&rp->c_node);
  INIT_LIST_HEAD(&rp->c_lru);

  memset(&rp->c_key, 0, sizeof(rp->c_key));
  rp->c_key.k_xid = rqstp->rq_xid;
  rp->c_key.k_proc = rqstp->rq_proc;
  rpc_copy_addr((struct sockaddr *)&rp->c_key.k_addr, svc_addr(rqstp));
  rpc_set_port((struct sockaddr *)&rp->c_key.k_addr, rpc_get_port(svc_addr(rqstp)));
  rp->c_key.k_prot = rqstp->rq_prot;
  rp->c_key.k_vers = rqstp->rq_vers;
  rp->c_key.k_len = rqstp->rq_arg.len;
  rp->c_key.k_csum = csum;
 }
 return rp;
}

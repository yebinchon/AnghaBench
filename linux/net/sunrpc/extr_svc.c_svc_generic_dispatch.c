
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct kvec* head; } ;
struct TYPE_3__ {struct kvec* head; } ;
struct svc_rqst {int rq_flags; struct svc_procedure* rq_procinfo; TYPE_2__ rq_res; TYPE_1__ rq_arg; } ;
struct svc_procedure {int (* pc_encode ) (struct svc_rqst*,scalar_t__) ;int (* pc_func ) (struct svc_rqst*) ;int (* pc_decode ) (struct svc_rqst*,scalar_t__) ;} ;
struct kvec {scalar_t__ iov_len; scalar_t__ iov_base; } ;
typedef int __be32 ;


 int RQ_AUTHERR ;
 int RQ_DROPME ;
 int dprintk (char*) ;
 int rpc_drop_reply ;
 int rpc_garbage_args ;
 int rpc_success ;
 int rpc_system_err ;
 int stub1 (struct svc_rqst*,scalar_t__) ;
 int stub2 (struct svc_rqst*) ;
 int stub3 (struct svc_rqst*,scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
svc_generic_dispatch(struct svc_rqst *rqstp, __be32 *statp)
{
 struct kvec *argv = &rqstp->rq_arg.head[0];
 struct kvec *resv = &rqstp->rq_res.head[0];
 const struct svc_procedure *procp = rqstp->rq_procinfo;





 if (procp->pc_decode &&
     !procp->pc_decode(rqstp, argv->iov_base)) {
  *statp = rpc_garbage_args;
  return 1;
 }

 *statp = procp->pc_func(rqstp);

 if (*statp == rpc_drop_reply ||
     test_bit(RQ_DROPME, &rqstp->rq_flags))
  return 0;

 if (test_bit(RQ_AUTHERR, &rqstp->rq_flags))
  return 1;

 if (*statp != rpc_success)
  return 1;


 if (procp->pc_encode &&
     !procp->pc_encode(rqstp, resv->iov_base + resv->iov_len)) {
  dprintk("svc: failed to encode reply\n");

  *statp = rpc_system_err;
 }
 return 1;
}

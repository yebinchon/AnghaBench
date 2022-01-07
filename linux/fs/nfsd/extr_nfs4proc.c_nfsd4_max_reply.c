
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct nfsd4_op {scalar_t__ opnum; scalar_t__ status; } ;
typedef int __be32 ;
struct TYPE_2__ {int (* op_rsize_bop ) (struct svc_rqst*,struct nfsd4_op*) ;} ;


 int BUG_ON (int ) ;
 TYPE_1__* OPDESC (struct nfsd4_op*) ;
 scalar_t__ OP_ILLEGAL ;
 scalar_t__ nfserr_notsupp ;
 int op_encode_hdr_size ;
 int stub1 (struct svc_rqst*,struct nfsd4_op*) ;

int nfsd4_max_reply(struct svc_rqst *rqstp, struct nfsd4_op *op)
{
 if (op->opnum == OP_ILLEGAL || op->status == nfserr_notsupp)
  return op_encode_hdr_size * sizeof(__be32);

 BUG_ON(OPDESC(op)->op_rsize_bop == ((void*)0));
 return OPDESC(op)->op_rsize_bop(rqstp, op);
}

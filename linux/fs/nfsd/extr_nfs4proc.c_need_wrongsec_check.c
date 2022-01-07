
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd4_compoundargs* rq_argp; struct nfsd4_compoundres* rq_resp; } ;
struct nfsd4_operation {int op_flags; } ;
struct nfsd4_op {scalar_t__ opnum; } ;
struct nfsd4_compoundres {int opcnt; } ;
struct nfsd4_compoundargs {size_t opcnt; struct nfsd4_op* ops; } ;


 struct nfsd4_operation* OPDESC (struct nfsd4_op*) ;
 int OP_HANDLES_WRONGSEC ;
 scalar_t__ OP_ILLEGAL ;
 int OP_IS_PUTFH_LIKE ;

__attribute__((used)) static bool need_wrongsec_check(struct svc_rqst *rqstp)
{
 struct nfsd4_compoundres *resp = rqstp->rq_resp;
 struct nfsd4_compoundargs *argp = rqstp->rq_argp;
 struct nfsd4_op *this = &argp->ops[resp->opcnt - 1];
 struct nfsd4_op *next = &argp->ops[resp->opcnt];
 const struct nfsd4_operation *thisd = OPDESC(this);
 const struct nfsd4_operation *nextd;





 if (!(thisd->op_flags & OP_IS_PUTFH_LIKE))
  return 0;





 if (argp->opcnt == resp->opcnt)
  return 0;
 if (next->opnum == OP_ILLEGAL)
  return 0;
 nextd = OPDESC(next);





 return !(nextd->op_flags & OP_HANDLES_WRONGSEC);
}

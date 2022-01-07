
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd4_compoundargs* rq_argp; struct nfsd4_compoundres* rq_resp; } ;
struct nfsd4_compoundres {scalar_t__ opcnt; } ;
struct nfsd4_compoundargs {scalar_t__ opcnt; } ;



__attribute__((used)) static inline bool nfsd4_last_compound_op(struct svc_rqst *rqstp)
{
 struct nfsd4_compoundres *resp = rqstp->rq_resp;
 struct nfsd4_compoundargs *argp = rqstp->rq_argp;

 return argp->opcnt == resp->opcnt;
}

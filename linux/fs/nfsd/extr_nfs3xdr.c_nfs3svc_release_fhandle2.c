
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd3_fhandle_pair* rq_resp; } ;
struct nfsd3_fhandle_pair {int fh2; int fh1; } ;


 int fh_put (int *) ;

void
nfs3svc_release_fhandle2(struct svc_rqst *rqstp)
{
 struct nfsd3_fhandle_pair *resp = rqstp->rq_resp;

 fh_put(&resp->fh1);
 fh_put(&resp->fh2);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd_fhandle* rq_resp; } ;
struct nfsd_fhandle {int fh; } ;


 int fh_put (int *) ;

void
nfssvc_release_fhandle(struct svc_rqst *rqstp)
{
 struct nfsd_fhandle *resp = rqstp->rq_resp;

 fh_put(&resp->fh);
}

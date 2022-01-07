
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct nfsd3_getaclres* rq_resp; } ;
struct nfsd3_getaclres {int acl_default; int acl_access; int fh; } ;


 int fh_put (int *) ;
 int posix_acl_release (int ) ;

__attribute__((used)) static void nfs3svc_release_getacl(struct svc_rqst *rqstp)
{
 struct nfsd3_getaclres *resp = rqstp->rq_resp;

 fh_put(&resp->fh);
 posix_acl_release(resp->acl_access);
 posix_acl_release(resp->acl_default);
}

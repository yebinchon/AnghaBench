
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_attrstat {int stat; int fh; } ;
typedef scalar_t__ __be32 ;


 scalar_t__ fh_getattr (int *,int *) ;

__attribute__((used)) static __be32
nfsd_return_attrs(__be32 err, struct nfsd_attrstat *resp)
{
 if (err) return err;
 return fh_getattr(&resp->fh, &resp->stat);
}

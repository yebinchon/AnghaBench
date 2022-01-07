
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
typedef int __be32 ;


 int nfs_ok ;

__attribute__((used)) static __be32
nfsd_proc_null(struct svc_rqst *rqstp)
{
 return nfs_ok;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compoundargs {scalar_t__ minorversion; } ;
typedef int __be32 ;


 int nfs_ok ;
 int nfserr_notsupp ;

__attribute__((used)) static __be32
nfsd4_decode_putpubfh(struct nfsd4_compoundargs *argp, void *p)
{
 if (argp->minorversion == 0)
  return nfs_ok;
 return nfserr_notsupp;
}

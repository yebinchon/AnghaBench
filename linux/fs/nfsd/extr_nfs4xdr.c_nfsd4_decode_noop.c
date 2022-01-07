
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compoundargs {int dummy; } ;
typedef int __be32 ;


 int nfs_ok ;

__attribute__((used)) static __be32
nfsd4_decode_noop(struct nfsd4_compoundargs *argp, void *p)
{
 return nfs_ok;
}

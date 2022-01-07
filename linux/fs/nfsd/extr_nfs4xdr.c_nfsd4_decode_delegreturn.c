
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_delegreturn {int dr_stateid; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef int __be32 ;


 int nfsd4_decode_stateid (struct nfsd4_compoundargs*,int *) ;

__attribute__((used)) static inline __be32
nfsd4_decode_delegreturn(struct nfsd4_compoundargs *argp, struct nfsd4_delegreturn *dr)
{
 return nfsd4_decode_stateid(argp, &dr->dr_stateid);
}

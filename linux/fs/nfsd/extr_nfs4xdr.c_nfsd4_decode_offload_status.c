
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_offload_status {int stateid; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef int __be32 ;


 int nfsd4_decode_stateid (struct nfsd4_compoundargs*,int *) ;

__attribute__((used)) static __be32
nfsd4_decode_offload_status(struct nfsd4_compoundargs *argp,
       struct nfsd4_offload_status *os)
{
 return nfsd4_decode_stateid(argp, &os->stateid);
}

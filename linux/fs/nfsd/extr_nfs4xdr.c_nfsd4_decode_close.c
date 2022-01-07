
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compoundargs {int dummy; } ;
struct nfsd4_close {int cl_stateid; int cl_seqid; } ;
typedef int __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ_BUF (int) ;
 int be32_to_cpup (int ) ;
 int nfsd4_decode_stateid (struct nfsd4_compoundargs*,int *) ;
 int p ;

__attribute__((used)) static __be32
nfsd4_decode_close(struct nfsd4_compoundargs *argp, struct nfsd4_close *close)
{
 DECODE_HEAD;

 READ_BUF(4);
 close->cl_seqid = be32_to_cpup(p++);
 return nfsd4_decode_stateid(argp, &close->cl_stateid);

 DECODE_TAIL;
}

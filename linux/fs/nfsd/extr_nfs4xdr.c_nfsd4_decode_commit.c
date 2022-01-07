
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compoundargs {int dummy; } ;
struct nfsd4_commit {int co_count; int co_offset; } ;
typedef int __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ_BUF (int) ;
 int be32_to_cpup (int ) ;
 int p ;
 int xdr_decode_hyper (int ,int *) ;

__attribute__((used)) static __be32
nfsd4_decode_commit(struct nfsd4_compoundargs *argp, struct nfsd4_commit *commit)
{
 DECODE_HEAD;

 READ_BUF(12);
 p = xdr_decode_hyper(p, &commit->co_offset);
 commit->co_count = be32_to_cpup(p++);

 DECODE_TAIL;
}

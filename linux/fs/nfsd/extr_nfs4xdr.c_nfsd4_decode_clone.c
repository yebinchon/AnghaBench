
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compoundargs {int dummy; } ;
struct nfsd4_clone {int cl_count; int cl_dst_pos; int cl_src_pos; int cl_dst_stateid; int cl_src_stateid; } ;
typedef scalar_t__ __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ_BUF (int) ;
 scalar_t__ nfsd4_decode_stateid (struct nfsd4_compoundargs*,int *) ;
 int p ;
 scalar_t__ status ;
 int xdr_decode_hyper (int ,int *) ;

__attribute__((used)) static __be32
nfsd4_decode_clone(struct nfsd4_compoundargs *argp, struct nfsd4_clone *clone)
{
 DECODE_HEAD;

 status = nfsd4_decode_stateid(argp, &clone->cl_src_stateid);
 if (status)
  return status;
 status = nfsd4_decode_stateid(argp, &clone->cl_dst_stateid);
 if (status)
  return status;

 READ_BUF(8 + 8 + 8);
 p = xdr_decode_hyper(p, &clone->cl_src_pos);
 p = xdr_decode_hyper(p, &clone->cl_dst_pos);
 p = xdr_decode_hyper(p, &clone->cl_count);
 DECODE_TAIL;
}

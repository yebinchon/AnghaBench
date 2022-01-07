
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_copy {int cp_synchronous; int cp_count; int cp_dst_pos; int cp_src_pos; int cp_dst_stateid; int cp_src_stateid; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef scalar_t__ __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ_BUF (int) ;
 int be32_to_cpup (int ) ;
 scalar_t__ nfsd4_decode_stateid (struct nfsd4_compoundargs*,int *) ;
 int p ;
 scalar_t__ status ;
 int xdr_decode_hyper (int ,int *) ;

__attribute__((used)) static __be32
nfsd4_decode_copy(struct nfsd4_compoundargs *argp, struct nfsd4_copy *copy)
{
 DECODE_HEAD;

 status = nfsd4_decode_stateid(argp, &copy->cp_src_stateid);
 if (status)
  return status;
 status = nfsd4_decode_stateid(argp, &copy->cp_dst_stateid);
 if (status)
  return status;

 READ_BUF(8 + 8 + 8 + 4 + 4 + 4);
 p = xdr_decode_hyper(p, &copy->cp_src_pos);
 p = xdr_decode_hyper(p, &copy->cp_dst_pos);
 p = xdr_decode_hyper(p, &copy->cp_count);
 p++;
 copy->cp_synchronous = be32_to_cpup(p++);


 DECODE_TAIL;
}

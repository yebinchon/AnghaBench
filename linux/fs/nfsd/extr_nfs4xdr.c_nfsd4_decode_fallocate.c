
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_fallocate {int falloc_length; int falloc_offset; int falloc_stateid; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef scalar_t__ __be32 ;


 int DECODE_HEAD ;
 int DECODE_TAIL ;
 int READ_BUF (int) ;
 scalar_t__ nfsd4_decode_stateid (struct nfsd4_compoundargs*,int *) ;
 int p ;
 scalar_t__ status ;
 int xdr_decode_hyper (int ,int *) ;

__attribute__((used)) static __be32
nfsd4_decode_fallocate(struct nfsd4_compoundargs *argp,
         struct nfsd4_fallocate *fallocate)
{
 DECODE_HEAD;

 status = nfsd4_decode_stateid(argp, &fallocate->falloc_stateid);
 if (status)
  return status;

 READ_BUF(16);
 p = xdr_decode_hyper(p, &fallocate->falloc_offset);
 xdr_decode_hyper(p, &fallocate->falloc_length);

 DECODE_TAIL;
}

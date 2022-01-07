
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_seek {int seek_whence; int seek_offset; int seek_stateid; } ;
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
nfsd4_decode_seek(struct nfsd4_compoundargs *argp, struct nfsd4_seek *seek)
{
 DECODE_HEAD;

 status = nfsd4_decode_stateid(argp, &seek->seek_stateid);
 if (status)
  return status;

 READ_BUF(8 + 4);
 p = xdr_decode_hyper(p, &seek->seek_offset);
 seek->seek_whence = be32_to_cpup(p);

 DECODE_TAIL;
}

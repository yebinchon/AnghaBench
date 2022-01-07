
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_seek {int seek_pos; int seek_eof; } ;
struct nfsd4_compoundres {int xdr; } ;
typedef int __be32 ;


 int cpu_to_be32 (int ) ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_reserve_space (int *,int) ;

__attribute__((used)) static __be32
nfsd4_encode_seek(struct nfsd4_compoundres *resp, __be32 nfserr,
    struct nfsd4_seek *seek)
{
 __be32 *p;

 p = xdr_reserve_space(&resp->xdr, 4 + 8);
 *p++ = cpu_to_be32(seek->seek_eof);
 p = xdr_encode_hyper(p, seek->seek_pos);

 return 0;
}

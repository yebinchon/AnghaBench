
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs3_readdirargs {int count; int verf; int cookie; int fh; } ;
typedef int __be32 ;


 scalar_t__ NFS3_COOKIEVERFSIZE ;
 int cpu_to_be32 (int ) ;
 int encode_nfs_fh3 (struct xdr_stream*,int ) ;
 int * xdr_encode_cookie3 (int *,int ) ;
 int * xdr_encode_cookieverf3 (int *,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,scalar_t__) ;

__attribute__((used)) static void encode_readdir3args(struct xdr_stream *xdr,
    const struct nfs3_readdirargs *args)
{
 __be32 *p;

 encode_nfs_fh3(xdr, args->fh);

 p = xdr_reserve_space(xdr, 8 + NFS3_COOKIEVERFSIZE + 4);
 p = xdr_encode_cookie3(p, args->cookie);
 p = xdr_encode_cookieverf3(p, args->verf);
 *p = cpu_to_be32(args->count);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_pgio_args {int count; int offset; int fh; } ;
typedef int __be32 ;


 int cpu_to_be32 (int ) ;
 int encode_nfs_fh3 (struct xdr_stream*,int ) ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_read3args(struct xdr_stream *xdr,
        const struct nfs_pgio_args *args)
{
 __be32 *p;

 encode_nfs_fh3(xdr, args->fh);

 p = xdr_reserve_space(xdr, 8 + 4);
 p = xdr_encode_hyper(p, args->offset);
 *p = cpu_to_be32(args->count);
}

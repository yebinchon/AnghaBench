
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_readdirargs {int count; int cookie; int fh; } ;
typedef void* __be32 ;


 void* cpu_to_be32 (int ) ;
 int encode_fhandle (struct xdr_stream*,int ) ;
 void** xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_readdirargs(struct xdr_stream *xdr,
          const struct nfs_readdirargs *args)
{
 __be32 *p;

 encode_fhandle(xdr, args->fh);

 p = xdr_reserve_space(xdr, 4 + 4);
 *p++ = cpu_to_be32(args->cookie);
 *p = cpu_to_be32(args->count);
}

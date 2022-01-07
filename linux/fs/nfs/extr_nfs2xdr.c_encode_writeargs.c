
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct nfs_pgio_args {int pgbase; int pages; int fh; int count; int offset; } ;
typedef void* __be32 ;


 void* cpu_to_be32 (int ) ;
 int encode_fhandle (struct xdr_stream*,int ) ;
 void** xdr_reserve_space (struct xdr_stream*,int) ;
 int xdr_write_pages (struct xdr_stream*,int ,int ,int ) ;

__attribute__((used)) static void encode_writeargs(struct xdr_stream *xdr,
        const struct nfs_pgio_args *args)
{
 u32 offset = args->offset;
 u32 count = args->count;
 __be32 *p;

 encode_fhandle(xdr, args->fh);

 p = xdr_reserve_space(xdr, 4 + 4 + 4 + 4);
 *p++ = cpu_to_be32(offset);
 *p++ = cpu_to_be32(offset);
 *p++ = cpu_to_be32(count);


 *p = cpu_to_be32(count);
 xdr_write_pages(xdr, args->pages, args->pgbase, count);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct page {int dummy; } ;
typedef int __be32 ;


 int cpu_to_be32 (int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;
 int xdr_write_pages (struct xdr_stream*,struct page**,int ,int ) ;

__attribute__((used)) static void encode_path(struct xdr_stream *xdr, struct page **pages, u32 length)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 4);
 *p = cpu_to_be32(length);
 xdr_write_pages(xdr, pages, 0, length);
}

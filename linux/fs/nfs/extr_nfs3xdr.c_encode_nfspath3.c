
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct page {int dummy; } ;


 int encode_uint32 (struct xdr_stream*,int const) ;
 int xdr_write_pages (struct xdr_stream*,struct page**,int ,int const) ;

__attribute__((used)) static void encode_nfspath3(struct xdr_stream *xdr, struct page **pages,
       const u32 length)
{
 encode_uint32(xdr, length);
 xdr_write_pages(xdr, pages, 0, length);
}

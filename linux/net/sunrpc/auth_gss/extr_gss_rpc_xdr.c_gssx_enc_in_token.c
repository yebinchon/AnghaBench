
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct gssp_in_token {int page_len; int page_base; int pages; } ;
typedef int __be32 ;


 int ENOSPC ;
 int cpu_to_be32 (int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;
 int xdr_write_pages (struct xdr_stream*,int ,int ,int ) ;

__attribute__((used)) static int gssx_enc_in_token(struct xdr_stream *xdr,
        const struct gssp_in_token *in)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 4);
 if (!p)
  return -ENOSPC;
 *p = cpu_to_be32(in->page_len);


 xdr_write_pages(xdr, in->pages, in->page_base, in->page_len);

 return 0;
}

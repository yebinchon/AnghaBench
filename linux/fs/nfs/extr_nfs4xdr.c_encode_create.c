
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct xdr_stream {TYPE_2__* buf; } ;
struct TYPE_9__ {int specdata2; int specdata1; } ;
struct TYPE_7__ {int len; int pages; } ;
struct TYPE_10__ {TYPE_3__ device; TYPE_1__ symlink; } ;
struct nfs4_create_arg {int ftype; TYPE_6__* server; int umask; int label; int attrs; TYPE_5__* name; TYPE_4__ u; } ;
struct compound_hdr {int dummy; } ;
typedef void* __be32 ;
struct TYPE_12__ {int attr_bitmask; } ;
struct TYPE_11__ {int name; int len; } ;
struct TYPE_8__ {int flags; } ;





 int OP_CREATE ;
 int XDRBUF_WRITE ;
 void* cpu_to_be32 (int ) ;
 int decode_create_maxsz ;
 int encode_attrs (struct xdr_stream*,int ,int ,int *,TYPE_6__*,int ) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int encode_string (struct xdr_stream*,int ,int ) ;
 int encode_uint32 (struct xdr_stream*,int) ;
 void** reserve_space (struct xdr_stream*,int) ;
 int xdr_write_pages (struct xdr_stream*,int ,int ,int ) ;

__attribute__((used)) static void encode_create(struct xdr_stream *xdr, const struct nfs4_create_arg *create, struct compound_hdr *hdr)
{
 __be32 *p;

 encode_op_hdr(xdr, OP_CREATE, decode_create_maxsz, hdr);
 encode_uint32(xdr, create->ftype);

 switch (create->ftype) {
 case 128:
  p = reserve_space(xdr, 4);
  *p = cpu_to_be32(create->u.symlink.len);
  xdr_write_pages(xdr, create->u.symlink.pages, 0,
    create->u.symlink.len);
  xdr->buf->flags |= XDRBUF_WRITE;
  break;

 case 130: case 129:
  p = reserve_space(xdr, 8);
  *p++ = cpu_to_be32(create->u.device.specdata1);
  *p = cpu_to_be32(create->u.device.specdata2);
  break;

 default:
  break;
 }

 encode_string(xdr, create->name->len, create->name->name);
 encode_attrs(xdr, create->attrs, create->label, &create->umask,
   create->server, create->server->attr_bitmask);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct xdr_stream {int nwords; TYPE_2__* buf; } ;
struct rpc_rqst {int dummy; } ;
struct nfs_getaclres {unsigned int acl_len; scalar_t__ acl_data_offset; int acl_flags; } ;
struct TYPE_4__ {scalar_t__ page_len; TYPE_1__* head; } ;
struct TYPE_3__ {unsigned int iov_len; } ;


 int EIO ;
 int EOPNOTSUPP ;
 unsigned int FATTR4_WORD0_ACL ;
 int NFS4_ACL_TRUNC ;
 int OP_GETATTR ;
 int decode_attr_bitmap (struct xdr_stream*,unsigned int*) ;
 int decode_attr_length (struct xdr_stream*,unsigned int*,unsigned int*) ;
 int decode_op_hdr (struct xdr_stream*,int ) ;
 int dprintk (char*,unsigned int,int) ;
 scalar_t__ likely (unsigned int) ;
 scalar_t__ unlikely (unsigned int) ;
 int xdr_enter_page (struct xdr_stream*,scalar_t__) ;
 scalar_t__ xdr_stream_pos (struct xdr_stream*) ;

__attribute__((used)) static int decode_getacl(struct xdr_stream *xdr, struct rpc_rqst *req,
    struct nfs_getaclres *res)
{
 unsigned int savep;
 uint32_t attrlen,
   bitmap[3] = {0};
 int status;
 unsigned int pg_offset;

 res->acl_len = 0;
 if ((status = decode_op_hdr(xdr, OP_GETATTR)) != 0)
  goto out;

 xdr_enter_page(xdr, xdr->buf->page_len);


 pg_offset = xdr->buf->head[0].iov_len;

 if ((status = decode_attr_bitmap(xdr, bitmap)) != 0)
  goto out;
 if ((status = decode_attr_length(xdr, &attrlen, &savep)) != 0)
  goto out;

 if (unlikely(bitmap[0] & (FATTR4_WORD0_ACL - 1U)))
  return -EIO;
 if (likely(bitmap[0] & FATTR4_WORD0_ACL)) {




  res->acl_data_offset = xdr_stream_pos(xdr) - pg_offset;
  res->acl_len = attrlen;


  if (res->acl_len > (xdr->nwords << 2) ||
      res->acl_len + res->acl_data_offset > xdr->buf->page_len) {
   res->acl_flags |= NFS4_ACL_TRUNC;
   dprintk("NFS: acl reply: attrlen %u > page_len %u\n",
     attrlen, xdr->nwords << 2);
  }
 } else
  status = -EOPNOTSUPP;

out:
 return status;
}

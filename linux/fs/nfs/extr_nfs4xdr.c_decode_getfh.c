
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xdr_stream {int dummy; } ;
struct nfs_fh {int size; int data; } ;
typedef int __be32 ;


 int EIO ;
 int NFS4_FHSIZE ;
 int OP_GETFH ;
 int be32_to_cpup (int *) ;
 int decode_op_hdr (struct xdr_stream*,int ) ;
 int memcpy (int ,int *,int) ;
 int memset (struct nfs_fh*,int ,int) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_getfh(struct xdr_stream *xdr, struct nfs_fh *fh)
{
 __be32 *p;
 uint32_t len;
 int status;


 memset(fh, 0, sizeof(*fh));

 status = decode_op_hdr(xdr, OP_GETFH);
 if (status)
  return status;

 p = xdr_inline_decode(xdr, 4);
 if (unlikely(!p))
  return -EIO;
 len = be32_to_cpup(p);
 if (len > NFS4_FHSIZE)
  return -EIO;
 fh->size = len;
 p = xdr_inline_decode(xdr, len);
 if (unlikely(!p))
  return -EIO;
 memcpy(fh->data, p, len);
 return 0;
}

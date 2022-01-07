
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_write_verifier {int data; } ;
typedef int __be32 ;


 int EIO ;
 int NFS3_WRITEVERFSIZE ;
 int memcpy (int ,int *,int ) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int ) ;

__attribute__((used)) static int decode_writeverf3(struct xdr_stream *xdr, struct nfs_write_verifier *verifier)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, NFS3_WRITEVERFSIZE);
 if (unlikely(!p))
  return -EIO;
 memcpy(verifier->data, p, NFS3_WRITEVERFSIZE);
 return 0;
}

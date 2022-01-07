
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_fh {int size; int data; } ;
typedef int __be32 ;


 int NFS3_FHSIZE ;
 int WARN_ON_ONCE (int) ;
 int xdr_encode_opaque (int *,int ,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_nfs_fh3(struct xdr_stream *xdr, const struct nfs_fh *fh)
{
 __be32 *p;

 WARN_ON_ONCE(fh->size > NFS3_FHSIZE);
 p = xdr_reserve_space(xdr, 4 + fh->size);
 xdr_encode_opaque(p, fh->data, fh->size);
}

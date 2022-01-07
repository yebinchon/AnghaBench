
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
struct knfsd_fh {scalar_t__ fh_size; int fh_base; } ;
typedef int __be32 ;


 int BUG_ON (int) ;
 scalar_t__ NFS4_FHSIZE ;
 int xdr_encode_opaque (int *,int *,scalar_t__) ;
 int * xdr_reserve_space (struct xdr_stream*,scalar_t__) ;

__attribute__((used)) static void encode_nfs_fh4(struct xdr_stream *xdr, const struct knfsd_fh *fh)
{
 u32 length = fh->fh_size;
 __be32 *p;

 BUG_ON(length > NFS4_FHSIZE);
 p = xdr_reserve_space(xdr, 4 + length);
 xdr_encode_opaque(p, &fh->fh_base, length);
}

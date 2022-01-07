
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_fh {int data; } ;
typedef int __be32 ;


 int NFS2_FHSIZE ;
 int memcpy (int *,int ,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_fhandle(struct xdr_stream *xdr, const struct nfs_fh *fh)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, NFS2_FHSIZE);
 memcpy(p, fh->data, NFS2_FHSIZE);
}

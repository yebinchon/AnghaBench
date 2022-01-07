
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_fattr {int valid; int pre_ctime; int pre_change_attr; int pre_mtime; int pre_size; } ;
typedef int __be32 ;


 int EIO ;
 int NFS3_wcc_attr_sz ;
 int NFS_ATTR_FATTR_PRECHANGE ;
 int NFS_ATTR_FATTR_PRECTIME ;
 int NFS_ATTR_FATTR_PREMTIME ;
 int NFS_ATTR_FATTR_PRESIZE ;
 int nfs_timespec_to_change_attr (int *) ;
 scalar_t__ unlikely (int) ;
 int * xdr_decode_nfstime3 (int *,int *) ;
 int * xdr_decode_size3 (int *,int *) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_wcc_attr(struct xdr_stream *xdr, struct nfs_fattr *fattr)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, NFS3_wcc_attr_sz << 2);
 if (unlikely(!p))
  return -EIO;

 fattr->valid |= NFS_ATTR_FATTR_PRESIZE
  | NFS_ATTR_FATTR_PRECHANGE
  | NFS_ATTR_FATTR_PREMTIME
  | NFS_ATTR_FATTR_PRECTIME;

 p = xdr_decode_size3(p, &fattr->pre_size);
 p = xdr_decode_nfstime3(p, &fattr->pre_mtime);
 xdr_decode_nfstime3(p, &fattr->pre_ctime);
 fattr->pre_change_attr = nfs_timespec_to_change_attr(&fattr->pre_ctime);

 return 0;
}

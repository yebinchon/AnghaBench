
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xdr_stream {int dummy; } ;
struct user_namespace {int dummy; } ;
struct TYPE_6__ {scalar_t__ minor; void* major; } ;
struct TYPE_4__ {void* blocks; void* blocksize; } ;
struct TYPE_5__ {TYPE_1__ nfs2; } ;
struct nfs_fattr {int mode; int ctime; int change_attr; int mtime; int atime; void* fileid; TYPE_3__ fsid; TYPE_2__ du; int rdev; void* size; int gid; int uid; void* nlink; int valid; } ;
typedef int __be32 ;


 int EINVAL ;
 int EIO ;
 scalar_t__ NFCHR ;
 scalar_t__ NFS2_FIFO_DEV ;
 int NFS_ATTR_FATTR_V2 ;
 int NFS_fattr_sz ;
 int S_IFIFO ;
 int S_IFMT ;
 void* be32_to_cpup (int ) ;
 int dprintk (char*) ;
 int gid_valid (int ) ;
 int make_kgid (struct user_namespace*,void*) ;
 int make_kuid (struct user_namespace*,void*) ;
 int new_decode_dev (scalar_t__) ;
 int nfs_timespec_to_change_attr (int *) ;
 int uid_valid (int ) ;
 scalar_t__ unlikely (int) ;
 int * xdr_decode_ftype (int *,scalar_t__*) ;
 int * xdr_decode_time (int *,int *) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_fattr(struct xdr_stream *xdr, struct nfs_fattr *fattr,
  struct user_namespace *userns)
{
 u32 rdev, type;
 __be32 *p;

 p = xdr_inline_decode(xdr, NFS_fattr_sz << 2);
 if (unlikely(!p))
  return -EIO;

 fattr->valid |= NFS_ATTR_FATTR_V2;

 p = xdr_decode_ftype(p, &type);

 fattr->mode = be32_to_cpup(p++);
 fattr->nlink = be32_to_cpup(p++);
 fattr->uid = make_kuid(userns, be32_to_cpup(p++));
 if (!uid_valid(fattr->uid))
  goto out_uid;
 fattr->gid = make_kgid(userns, be32_to_cpup(p++));
 if (!gid_valid(fattr->gid))
  goto out_gid;

 fattr->size = be32_to_cpup(p++);
 fattr->du.nfs2.blocksize = be32_to_cpup(p++);

 rdev = be32_to_cpup(p++);
 fattr->rdev = new_decode_dev(rdev);
 if (type == (u32)NFCHR && rdev == (u32)NFS2_FIFO_DEV) {
  fattr->mode = (fattr->mode & ~S_IFMT) | S_IFIFO;
  fattr->rdev = 0;
 }

 fattr->du.nfs2.blocks = be32_to_cpup(p++);
 fattr->fsid.major = be32_to_cpup(p++);
 fattr->fsid.minor = 0;
 fattr->fileid = be32_to_cpup(p++);

 p = xdr_decode_time(p, &fattr->atime);
 p = xdr_decode_time(p, &fattr->mtime);
 xdr_decode_time(p, &fattr->ctime);
 fattr->change_attr = nfs_timespec_to_change_attr(&fattr->ctime);

 return 0;
out_uid:
 dprintk("NFS: returned invalid uid\n");
 return -EINVAL;
out_gid:
 dprintk("NFS: returned invalid gid\n");
 return -EINVAL;
}

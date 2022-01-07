
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_fs_eofblocks {scalar_t__ eof_version; int eof_flags; int eof_gid; int eof_uid; int eof_min_file_size; int eof_prid; int * pad64; int pad32; } ;
struct xfs_eofblocks {int eof_flags; int eof_gid; int eof_uid; int eof_min_file_size; int eof_prid; } ;


 int EINVAL ;
 int INVALID_GID ;
 int INVALID_UID ;
 scalar_t__ XFS_EOFBLOCKS_VERSION ;
 int XFS_EOF_FLAGS_GID ;
 int XFS_EOF_FLAGS_UID ;
 int XFS_EOF_FLAGS_VALID ;
 int current_user_ns () ;
 int gid_valid (int ) ;
 int make_kgid (int ,int ) ;
 int make_kuid (int ,int ) ;
 scalar_t__ memchr_inv (int *,int ,int) ;
 int uid_valid (int ) ;

__attribute__((used)) static inline int
xfs_fs_eofblocks_from_user(
 struct xfs_fs_eofblocks *src,
 struct xfs_eofblocks *dst)
{
 if (src->eof_version != XFS_EOFBLOCKS_VERSION)
  return -EINVAL;

 if (src->eof_flags & ~XFS_EOF_FLAGS_VALID)
  return -EINVAL;

 if (memchr_inv(&src->pad32, 0, sizeof(src->pad32)) ||
     memchr_inv(src->pad64, 0, sizeof(src->pad64)))
  return -EINVAL;

 dst->eof_flags = src->eof_flags;
 dst->eof_prid = src->eof_prid;
 dst->eof_min_file_size = src->eof_min_file_size;

 dst->eof_uid = INVALID_UID;
 if (src->eof_flags & XFS_EOF_FLAGS_UID) {
  dst->eof_uid = make_kuid(current_user_ns(), src->eof_uid);
  if (!uid_valid(dst->eof_uid))
   return -EINVAL;
 }

 dst->eof_gid = INVALID_GID;
 if (src->eof_flags & XFS_EOF_FLAGS_GID) {
  dst->eof_gid = make_kgid(current_user_ns(), src->eof_gid);
  if (!gid_valid(dst->eof_gid))
   return -EINVAL;
 }
 return 0;
}

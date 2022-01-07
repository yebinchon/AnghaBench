
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int umode_t ;
struct ocfs2_super {int s_mount_opt; } ;
struct ocfs2_security_xattr_info {int value_len; scalar_t__ enable; int name; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_7__ {int ip_xattr_sem; } ;
struct TYPE_6__ {scalar_t__ s_blocksize; } ;


 int ENODATA ;
 TYPE_5__* OCFS2_I (struct inode*) ;
 scalar_t__ OCFS2_MIN_BLOCKSIZE ;
 int OCFS2_MOUNT_POSIX_ACL ;
 struct ocfs2_super* OCFS2_SB (TYPE_1__*) ;
 scalar_t__ OCFS2_XATTR_BLOCK_CREATE_CREDITS ;
 int OCFS2_XATTR_FREE_IN_BLOCK (struct inode*) ;
 int OCFS2_XATTR_FREE_IN_IBODY ;
 int OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT ;
 int OCFS2_XATTR_INLINE_SIZE ;
 scalar_t__ S_ISDIR (int ) ;
 int down_read (int *) ;
 int mlog_errno (int) ;
 scalar_t__ ocfs2_blocks_per_xattr_bucket (TYPE_1__*) ;
 int ocfs2_clusters_for_bytes (TYPE_1__*,int) ;
 scalar_t__ ocfs2_clusters_to_blocks (TYPE_1__*,int) ;
 scalar_t__ ocfs2_supports_inline_data (struct ocfs2_super*) ;
 int ocfs2_xattr_entry_real_size (int ,int) ;
 int ocfs2_xattr_get_nolock (struct inode*,struct buffer_head*,int ,char*,int *,int ) ;
 int strlen (int ) ;
 int up_read (int *) ;

int ocfs2_calc_xattr_init(struct inode *dir,
     struct buffer_head *dir_bh,
     umode_t mode,
     struct ocfs2_security_xattr_info *si,
     int *want_clusters,
     int *xattr_credits,
     int *want_meta)
{
 int ret = 0;
 struct ocfs2_super *osb = OCFS2_SB(dir->i_sb);
 int s_size = 0, a_size = 0, acl_len = 0, new_clusters;

 if (si->enable)
  s_size = ocfs2_xattr_entry_real_size(strlen(si->name),
           si->value_len);

 if (osb->s_mount_opt & OCFS2_MOUNT_POSIX_ACL) {
  down_read(&OCFS2_I(dir)->ip_xattr_sem);
  acl_len = ocfs2_xattr_get_nolock(dir, dir_bh,
     OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT,
     "", ((void*)0), 0);
  up_read(&OCFS2_I(dir)->ip_xattr_sem);
  if (acl_len > 0) {
   a_size = ocfs2_xattr_entry_real_size(0, acl_len);
   if (S_ISDIR(mode))
    a_size <<= 1;
  } else if (acl_len != 0 && acl_len != -ENODATA) {
   ret = acl_len;
   mlog_errno(ret);
   return ret;
  }
 }

 if (!(s_size + a_size))
  return ret;
 if (dir->i_sb->s_blocksize == OCFS2_MIN_BLOCKSIZE ||
     (S_ISDIR(mode) && ocfs2_supports_inline_data(osb)) ||
     (s_size + a_size) > OCFS2_XATTR_FREE_IN_IBODY) {
  *want_meta = *want_meta + 1;
  *xattr_credits += OCFS2_XATTR_BLOCK_CREATE_CREDITS;
 }

 if (dir->i_sb->s_blocksize == OCFS2_MIN_BLOCKSIZE &&
     (s_size + a_size) > OCFS2_XATTR_FREE_IN_BLOCK(dir)) {
  *want_clusters += 1;
  *xattr_credits += ocfs2_blocks_per_xattr_bucket(dir->i_sb);
 }





 if (si->enable && si->value_len > OCFS2_XATTR_INLINE_SIZE) {
  new_clusters = ocfs2_clusters_for_bytes(dir->i_sb,
       si->value_len);
  *xattr_credits += ocfs2_clusters_to_blocks(dir->i_sb,
          new_clusters);
  *want_clusters += new_clusters;
 }
 if (osb->s_mount_opt & OCFS2_MOUNT_POSIX_ACL &&
     acl_len > OCFS2_XATTR_INLINE_SIZE) {

  new_clusters = (S_ISDIR(mode) ? 2 : 1) *
    ocfs2_clusters_for_bytes(dir->i_sb, acl_len);
  *xattr_credits += ocfs2_clusters_to_blocks(dir->i_sb,
          new_clusters);
  *want_clusters += new_clusters;
 }

 return ret;
}

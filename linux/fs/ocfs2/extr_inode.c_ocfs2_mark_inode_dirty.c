
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ocfs2_dinode {void* i_mtime_nsec; void* i_mtime; void* i_ctime_nsec; void* i_ctime; void* i_atime_nsec; void* i_atime; void* i_mode; void* i_gid; void* i_uid; void* i_size; void* i_dyn_features; void* i_attr; void* i_clusters; } ;
struct TYPE_8__ {int tv_nsec; int tv_sec; } ;
struct TYPE_7__ {int tv_nsec; int tv_sec; } ;
struct TYPE_6__ {int tv_nsec; int tv_sec; } ;
struct inode {TYPE_3__ i_mtime; TYPE_2__ i_ctime; TYPE_1__ i_atime; int i_mode; int i_nlink; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_9__ {int ip_lock; int ip_dyn_features; int ip_attr; int ip_clusters; scalar_t__ ip_blkno; } ;


 int INODE_CACHE (struct inode*) ;
 TYPE_4__* OCFS2_I (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int i_gid_read (struct inode*) ;
 int i_size_read (struct inode*) ;
 int i_uid_read (struct inode*) ;
 int mlog_errno (int) ;
 int ocfs2_get_inode_flags (TYPE_4__*) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_set_links_count (struct ocfs2_dinode*,int ) ;
 int ocfs2_update_inode_fsync_trans (int *,struct inode*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ocfs2_mark_inode_dirty (unsigned long long) ;

int ocfs2_mark_inode_dirty(handle_t *handle,
      struct inode *inode,
      struct buffer_head *bh)
{
 int status;
 struct ocfs2_dinode *fe = (struct ocfs2_dinode *) bh->b_data;

 trace_ocfs2_mark_inode_dirty((unsigned long long)OCFS2_I(inode)->ip_blkno);

 status = ocfs2_journal_access_di(handle, INODE_CACHE(inode), bh,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }

 spin_lock(&OCFS2_I(inode)->ip_lock);
 fe->i_clusters = cpu_to_le32(OCFS2_I(inode)->ip_clusters);
 ocfs2_get_inode_flags(OCFS2_I(inode));
 fe->i_attr = cpu_to_le32(OCFS2_I(inode)->ip_attr);
 fe->i_dyn_features = cpu_to_le16(OCFS2_I(inode)->ip_dyn_features);
 spin_unlock(&OCFS2_I(inode)->ip_lock);

 fe->i_size = cpu_to_le64(i_size_read(inode));
 ocfs2_set_links_count(fe, inode->i_nlink);
 fe->i_uid = cpu_to_le32(i_uid_read(inode));
 fe->i_gid = cpu_to_le32(i_gid_read(inode));
 fe->i_mode = cpu_to_le16(inode->i_mode);
 fe->i_atime = cpu_to_le64(inode->i_atime.tv_sec);
 fe->i_atime_nsec = cpu_to_le32(inode->i_atime.tv_nsec);
 fe->i_ctime = cpu_to_le64(inode->i_ctime.tv_sec);
 fe->i_ctime_nsec = cpu_to_le32(inode->i_ctime.tv_nsec);
 fe->i_mtime = cpu_to_le64(inode->i_mtime.tv_sec);
 fe->i_mtime_nsec = cpu_to_le32(inode->i_mtime.tv_nsec);

 ocfs2_journal_dirty(handle, bh);
 ocfs2_update_inode_fsync_trans(handle, inode, 1);
leave:
 return status;
}

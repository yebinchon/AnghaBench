
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct ocfs2_dir_lookup_result {int * member_0; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int i_mode; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;


 int EINVAL ;
 int INODE_CACHE (struct inode*) ;
 char* OCFS2_DIO_ORPHAN_PREFIX ;
 int OCFS2_DIO_ORPHAN_PREFIX_LEN ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_ORPHAN_NAMELEN ;
 scalar_t__ S_ISDIR (int ) ;
 int mlog_errno (int) ;
 int ocfs2_add_links_count (struct ocfs2_dinode*,int) ;
 int ocfs2_blkno_stringify (scalar_t__,char*) ;
 int ocfs2_delete_entry (int *,struct inode*,struct ocfs2_dir_lookup_result*) ;
 int ocfs2_find_entry (char*,int ,struct inode*,struct ocfs2_dir_lookup_result*) ;
 int ocfs2_free_dir_lookup_result (struct ocfs2_dir_lookup_result*) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_read_links_count (struct ocfs2_dinode*) ;
 int set_nlink (struct inode*,int ) ;
 int snprintf (char*,int,char*,char*) ;
 int strlen (char*) ;
 int trace_ocfs2_orphan_del (unsigned long long,char*,int ) ;

int ocfs2_orphan_del(struct ocfs2_super *osb,
       handle_t *handle,
       struct inode *orphan_dir_inode,
       struct inode *inode,
       struct buffer_head *orphan_dir_bh,
       bool dio)
{
 char name[OCFS2_DIO_ORPHAN_PREFIX_LEN + OCFS2_ORPHAN_NAMELEN + 1];
 struct ocfs2_dinode *orphan_fe;
 int status = 0;
 struct ocfs2_dir_lookup_result lookup = { ((void*)0), };

 if (dio) {
  status = snprintf(name, OCFS2_DIO_ORPHAN_PREFIX_LEN + 1, "%s",
    OCFS2_DIO_ORPHAN_PREFIX);
  if (status != OCFS2_DIO_ORPHAN_PREFIX_LEN) {
   status = -EINVAL;
   mlog_errno(status);
   return status;
  }

  status = ocfs2_blkno_stringify(OCFS2_I(inode)->ip_blkno,
    name + OCFS2_DIO_ORPHAN_PREFIX_LEN);
 } else
  status = ocfs2_blkno_stringify(OCFS2_I(inode)->ip_blkno, name);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }

 trace_ocfs2_orphan_del(
      (unsigned long long)OCFS2_I(orphan_dir_inode)->ip_blkno,
      name, strlen(name));

 status = ocfs2_journal_access_di(handle,
      INODE_CACHE(orphan_dir_inode),
      orphan_dir_bh,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }


 status = ocfs2_find_entry(name, strlen(name), orphan_dir_inode,
      &lookup);
 if (status) {
  mlog_errno(status);
  goto leave;
 }


 status = ocfs2_delete_entry(handle, orphan_dir_inode, &lookup);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }


 orphan_fe = (struct ocfs2_dinode *) orphan_dir_bh->b_data;
 if (S_ISDIR(inode->i_mode))
  ocfs2_add_links_count(orphan_fe, -1);
 set_nlink(orphan_dir_inode, ocfs2_read_links_count(orphan_fe));
 ocfs2_journal_dirty(handle, orphan_dir_bh);

leave:
 ocfs2_free_dir_lookup_result(&lookup);

 if (status)
  mlog_errno(status);
 return status;
}

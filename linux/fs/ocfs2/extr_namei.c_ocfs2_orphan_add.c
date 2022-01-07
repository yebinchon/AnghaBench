
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int slot_num; } ;
struct ocfs2_dir_lookup_result {int dummy; } ;
struct ocfs2_dinode {void* i_orphaned_slot; int i_flags; void* i_dio_orphaned_slot; } ;
struct inode {int i_mode; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; int ip_flags; } ;


 int INODE_CACHE (struct inode*) ;
 int OCFS2_DIO_ORPHANED_FL ;
 int OCFS2_DIO_ORPHAN_PREFIX_LEN ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_SKIP_ORPHAN_DIR ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_ORPHANED_FL ;
 int OCFS2_ORPHAN_NAMELEN ;
 scalar_t__ S_ISDIR (int ) ;
 int __ocfs2_add_entry (int *,struct inode*,char*,int,struct inode*,scalar_t__,struct buffer_head*,struct ocfs2_dir_lookup_result*) ;
 int brelse (struct buffer_head*) ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int mlog_errno (int) ;
 int ocfs2_add_links_count (struct ocfs2_dinode*,int) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_read_inode_block (struct inode*,struct buffer_head**) ;
 int ocfs2_read_links_count (struct ocfs2_dinode*) ;
 int set_nlink (struct inode*,int ) ;
 int trace_ocfs2_orphan_add_begin (unsigned long long) ;
 int trace_ocfs2_orphan_add_end (unsigned long long,int ) ;

__attribute__((used)) static int ocfs2_orphan_add(struct ocfs2_super *osb,
       handle_t *handle,
       struct inode *inode,
       struct buffer_head *fe_bh,
       char *name,
       struct ocfs2_dir_lookup_result *lookup,
       struct inode *orphan_dir_inode,
       bool dio)
{
 struct buffer_head *orphan_dir_bh = ((void*)0);
 int status = 0;
 struct ocfs2_dinode *orphan_fe;
 struct ocfs2_dinode *fe = (struct ocfs2_dinode *) fe_bh->b_data;
 int namelen = dio ?
   (OCFS2_DIO_ORPHAN_PREFIX_LEN + OCFS2_ORPHAN_NAMELEN) :
   OCFS2_ORPHAN_NAMELEN;

 trace_ocfs2_orphan_add_begin(
    (unsigned long long)OCFS2_I(inode)->ip_blkno);

 status = ocfs2_read_inode_block(orphan_dir_inode, &orphan_dir_bh);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }

 status = ocfs2_journal_access_di(handle,
      INODE_CACHE(orphan_dir_inode),
      orphan_dir_bh,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }







 status = ocfs2_journal_access_di(handle,
      INODE_CACHE(inode),
      fe_bh,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  goto leave;
 }



 orphan_fe = (struct ocfs2_dinode *) orphan_dir_bh->b_data;
 if (S_ISDIR(inode->i_mode))
  ocfs2_add_links_count(orphan_fe, 1);
 set_nlink(orphan_dir_inode, ocfs2_read_links_count(orphan_fe));
 ocfs2_journal_dirty(handle, orphan_dir_bh);

 status = __ocfs2_add_entry(handle, orphan_dir_inode, name,
       namelen, inode,
       OCFS2_I(inode)->ip_blkno,
       orphan_dir_bh, lookup);
 if (status < 0) {
  mlog_errno(status);
  goto rollback;
 }

 if (dio) {



  fe->i_flags |= cpu_to_le32(OCFS2_DIO_ORPHANED_FL);
  fe->i_dio_orphaned_slot = cpu_to_le16(osb->slot_num);
 } else {
  fe->i_flags |= cpu_to_le32(OCFS2_ORPHANED_FL);
  OCFS2_I(inode)->ip_flags &= ~OCFS2_INODE_SKIP_ORPHAN_DIR;




  fe->i_orphaned_slot = cpu_to_le16(osb->slot_num);
 }

 ocfs2_journal_dirty(handle, fe_bh);

 trace_ocfs2_orphan_add_end((unsigned long long)OCFS2_I(inode)->ip_blkno,
       osb->slot_num);

rollback:
 if (status < 0) {
  if (S_ISDIR(inode->i_mode))
   ocfs2_add_links_count(orphan_fe, -1);
  set_nlink(orphan_dir_inode, ocfs2_read_links_count(orphan_fe));
 }

leave:
 brelse(orphan_dir_bh);

 return status;
}

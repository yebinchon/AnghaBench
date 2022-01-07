
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ocfs2_super {TYPE_2__* sb; int fs_generation; } ;
struct TYPE_5__ {int de_count; } ;
struct ocfs2_dx_leaf {TYPE_1__ dl_list; int dl_blkno; int dl_fs_generation; int dl_signature; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_7__ {scalar_t__ ip_blkno; } ;
struct TYPE_6__ {int s_blocksize; } ;


 int ENOMEM ;
 int INODE_CACHE (struct inode*) ;
 int OCFS2_DX_LEAF_SIGNATURE ;
 TYPE_4__* OCFS2_I (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_CREATE ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (scalar_t__) ;
 int le16_to_cpu (int ) ;
 int memset (struct ocfs2_dx_leaf*,int ,int ) ;
 int mlog_errno (int) ;
 int ocfs2_dx_entries_per_leaf (TYPE_2__*) ;
 int ocfs2_journal_access_dl (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_set_new_buffer_uptodate (int ,struct buffer_head*) ;
 struct buffer_head* sb_getblk (TYPE_2__*,scalar_t__) ;
 int strcpy (int ,int ) ;
 int trace_ocfs2_dx_dir_format_cluster (unsigned long long,unsigned long long,int ) ;

__attribute__((used)) static int ocfs2_dx_dir_format_cluster(struct ocfs2_super *osb,
           handle_t *handle, struct inode *dir,
           struct buffer_head **dx_leaves,
           int num_dx_leaves, u64 start_blk)
{
 int ret, i;
 struct ocfs2_dx_leaf *dx_leaf;
 struct buffer_head *bh;

 for (i = 0; i < num_dx_leaves; i++) {
  bh = sb_getblk(osb->sb, start_blk + i);
  if (bh == ((void*)0)) {
   ret = -ENOMEM;
   goto out;
  }
  dx_leaves[i] = bh;

  ocfs2_set_new_buffer_uptodate(INODE_CACHE(dir), bh);

  ret = ocfs2_journal_access_dl(handle, INODE_CACHE(dir), bh,
           OCFS2_JOURNAL_ACCESS_CREATE);
  if (ret < 0) {
   mlog_errno(ret);
   goto out;
  }

  dx_leaf = (struct ocfs2_dx_leaf *) bh->b_data;

  memset(dx_leaf, 0, osb->sb->s_blocksize);
  strcpy(dx_leaf->dl_signature, OCFS2_DX_LEAF_SIGNATURE);
  dx_leaf->dl_fs_generation = cpu_to_le32(osb->fs_generation);
  dx_leaf->dl_blkno = cpu_to_le64(bh->b_blocknr);
  dx_leaf->dl_list.de_count =
   cpu_to_le16(ocfs2_dx_entries_per_leaf(osb->sb));

  trace_ocfs2_dx_dir_format_cluster(
    (unsigned long long)OCFS2_I(dir)->ip_blkno,
    (unsigned long long)bh->b_blocknr,
    le16_to_cpu(dx_leaf->dl_list.de_count));

  ocfs2_journal_dirty(handle, bh);
 }

 ret = 0;
out:
 return ret;
}

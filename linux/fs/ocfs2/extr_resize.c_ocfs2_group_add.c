
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct ocfs2_super {int s_clustersize_bits; int s_feature_incompat; int sb; } ;
struct ocfs2_new_group_input {int group; size_t chain; int clusters; int frees; } ;
struct ocfs2_group_desc {void* bg_next_group; } ;
struct TYPE_6__ {int i_used; int i_total; } ;
struct TYPE_7__ {TYPE_2__ bitmap1; } ;
struct ocfs2_chain_list {int cl_next_free_rec; struct ocfs2_chain_rec* cl_recs; int cl_bpc; int cl_cpg; } ;
struct TYPE_5__ {struct ocfs2_chain_list i_chain; } ;
struct ocfs2_dinode {void* i_size; int i_clusters; TYPE_3__ id1; TYPE_1__ id2; } ;
struct ocfs2_chain_rec {int c_free; int c_total; void* c_blkno; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_8__ {int ip_lock; int ip_clusters; } ;


 int EINVAL ;
 int EROFS ;
 int GLOBAL_BITMAP_SYSTEM_INODE ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int ML_ERROR ;
 int OCFS2_GROUP_ADD_CREDITS ;
 TYPE_4__* OCFS2_I (struct inode*) ;
 int OCFS2_INVALID_SLOT ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int brelse (struct buffer_head*) ;
 void* cpu_to_le64 (int) ;
 int i_size_write (struct inode*,int) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int iput (struct inode*) ;
 int le16_add_cpu (int *,int) ;
 int le16_to_cpu (int ) ;
 int le32_add_cpu (int *,int) ;
 int le32_to_cpu (int ) ;
 int le64_add_cpu (void**,int) ;
 int le64_to_cpu (void*) ;
 int memset (struct ocfs2_chain_rec*,int ,int) ;
 int mlog (int ,char*,...) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int ) ;
 int ocfs2_group_bitmap_size (int ,int ,int ) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 scalar_t__ ocfs2_is_soft_readonly (struct ocfs2_super*) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_access_gd (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_read_blocks_sync (struct ocfs2_super*,int,int,struct buffer_head**) ;
 int ocfs2_set_new_buffer_uptodate (int ,struct buffer_head*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_update_super_and_backups (struct inode*,int) ;
 int ocfs2_verify_group_and_input (struct inode*,struct ocfs2_dinode*,struct ocfs2_new_group_input*,struct buffer_head*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ocfs2_group_add (unsigned long long,size_t,int,int) ;

int ocfs2_group_add(struct inode *inode, struct ocfs2_new_group_input *input)
{
 int ret;
 handle_t *handle;
 struct buffer_head *main_bm_bh = ((void*)0);
 struct inode *main_bm_inode = ((void*)0);
 struct ocfs2_dinode *fe = ((void*)0);
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct buffer_head *group_bh = ((void*)0);
 struct ocfs2_group_desc *group = ((void*)0);
 struct ocfs2_chain_list *cl;
 struct ocfs2_chain_rec *cr;
 u16 cl_bpc;
 u64 bg_ptr;

 if (ocfs2_is_hard_readonly(osb) || ocfs2_is_soft_readonly(osb))
  return -EROFS;

 main_bm_inode = ocfs2_get_system_file_inode(osb,
          GLOBAL_BITMAP_SYSTEM_INODE,
          OCFS2_INVALID_SLOT);
 if (!main_bm_inode) {
  ret = -EINVAL;
  mlog_errno(ret);
  goto out;
 }

 inode_lock(main_bm_inode);

 ret = ocfs2_inode_lock(main_bm_inode, &main_bm_bh, 1);
 if (ret < 0) {
  mlog_errno(ret);
  goto out_mutex;
 }

 fe = (struct ocfs2_dinode *)main_bm_bh->b_data;

 if (le16_to_cpu(fe->id2.i_chain.cl_cpg) !=
  ocfs2_group_bitmap_size(osb->sb, 0,
     osb->s_feature_incompat) * 8) {
  mlog(ML_ERROR, "The disk is too old and small."
       " Force to do offline resize.");
  ret = -EINVAL;
  goto out_unlock;
 }

 ret = ocfs2_read_blocks_sync(osb, input->group, 1, &group_bh);
 if (ret < 0) {
  mlog(ML_ERROR, "Can't read the group descriptor # %llu "
       "from the device.", (unsigned long long)input->group);
  goto out_unlock;
 }

 ocfs2_set_new_buffer_uptodate(INODE_CACHE(inode), group_bh);

 ret = ocfs2_verify_group_and_input(main_bm_inode, fe, input, group_bh);
 if (ret) {
  mlog_errno(ret);
  goto out_free_group_bh;
 }

 trace_ocfs2_group_add((unsigned long long)input->group,
          input->chain, input->clusters, input->frees);

 handle = ocfs2_start_trans(osb, OCFS2_GROUP_ADD_CREDITS);
 if (IS_ERR(handle)) {
  mlog_errno(PTR_ERR(handle));
  ret = -EINVAL;
  goto out_free_group_bh;
 }

 cl_bpc = le16_to_cpu(fe->id2.i_chain.cl_bpc);
 cl = &fe->id2.i_chain;
 cr = &cl->cl_recs[input->chain];

 ret = ocfs2_journal_access_gd(handle, INODE_CACHE(main_bm_inode),
          group_bh, OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret < 0) {
  mlog_errno(ret);
  goto out_commit;
 }

 group = (struct ocfs2_group_desc *)group_bh->b_data;
 bg_ptr = le64_to_cpu(group->bg_next_group);
 group->bg_next_group = cr->c_blkno;
 ocfs2_journal_dirty(handle, group_bh);

 ret = ocfs2_journal_access_di(handle, INODE_CACHE(main_bm_inode),
          main_bm_bh, OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret < 0) {
  group->bg_next_group = cpu_to_le64(bg_ptr);
  mlog_errno(ret);
  goto out_commit;
 }

 if (input->chain == le16_to_cpu(cl->cl_next_free_rec)) {
  le16_add_cpu(&cl->cl_next_free_rec, 1);
  memset(cr, 0, sizeof(struct ocfs2_chain_rec));
 }

 cr->c_blkno = cpu_to_le64(input->group);
 le32_add_cpu(&cr->c_total, input->clusters * cl_bpc);
 le32_add_cpu(&cr->c_free, input->frees * cl_bpc);

 le32_add_cpu(&fe->id1.bitmap1.i_total, input->clusters *cl_bpc);
 le32_add_cpu(&fe->id1.bitmap1.i_used,
       (input->clusters - input->frees) * cl_bpc);
 le32_add_cpu(&fe->i_clusters, input->clusters);

 ocfs2_journal_dirty(handle, main_bm_bh);

 spin_lock(&OCFS2_I(main_bm_inode)->ip_lock);
 OCFS2_I(main_bm_inode)->ip_clusters = le32_to_cpu(fe->i_clusters);
 le64_add_cpu(&fe->i_size, (u64)input->clusters << osb->s_clustersize_bits);
 spin_unlock(&OCFS2_I(main_bm_inode)->ip_lock);
 i_size_write(main_bm_inode, le64_to_cpu(fe->i_size));

 ocfs2_update_super_and_backups(main_bm_inode, input->clusters);

out_commit:
 ocfs2_commit_trans(osb, handle);

out_free_group_bh:
 brelse(group_bh);

out_unlock:
 brelse(main_bm_bh);

 ocfs2_inode_unlock(main_bm_inode, 1);

out_mutex:
 inode_unlock(main_bm_inode);
 iput(main_bm_inode);

out:
 return ret;
}

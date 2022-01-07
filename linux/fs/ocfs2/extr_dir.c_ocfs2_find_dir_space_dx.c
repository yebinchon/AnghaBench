
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_dx_root_block {int dr_list; } ;
struct TYPE_2__ {int de_count; int de_num_used; } ;
struct ocfs2_dx_leaf {TYPE_1__ dl_list; } ;
struct ocfs2_dir_lookup_result {struct buffer_head* dl_dx_leaf_bh; int dl_hinfo; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int ENOSPC ;
 int brelse (struct buffer_head*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_dx_dir_lookup (struct inode*,int *,int *,int *,int *) ;
 int ocfs2_dx_dir_rebalance (struct ocfs2_super*,struct inode*,struct buffer_head*,struct buffer_head*,int *,int ,int ) ;
 int ocfs2_read_dx_leaf (struct inode*,int ,struct buffer_head**) ;

__attribute__((used)) static int ocfs2_find_dir_space_dx(struct ocfs2_super *osb, struct inode *dir,
       struct buffer_head *di_bh,
       struct buffer_head *dx_root_bh,
       const char *name, int namelen,
       struct ocfs2_dir_lookup_result *lookup)
{
 int ret, rebalanced = 0;
 struct ocfs2_dx_root_block *dx_root;
 struct buffer_head *dx_leaf_bh = ((void*)0);
 struct ocfs2_dx_leaf *dx_leaf;
 u64 blkno;
 u32 leaf_cpos;

 dx_root = (struct ocfs2_dx_root_block *)dx_root_bh->b_data;

restart_search:
 ret = ocfs2_dx_dir_lookup(dir, &dx_root->dr_list, &lookup->dl_hinfo,
      &leaf_cpos, &blkno);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_read_dx_leaf(dir, blkno, &dx_leaf_bh);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 dx_leaf = (struct ocfs2_dx_leaf *)dx_leaf_bh->b_data;

 if (le16_to_cpu(dx_leaf->dl_list.de_num_used) >=
     le16_to_cpu(dx_leaf->dl_list.de_count)) {
  if (rebalanced) {







   ret = -ENOSPC;
   goto out;
  }

  ret = ocfs2_dx_dir_rebalance(osb, dir, dx_root_bh, dx_leaf_bh,
          &lookup->dl_hinfo, leaf_cpos,
          blkno);
  if (ret) {
   if (ret != -ENOSPC)
    mlog_errno(ret);
   goto out;
  }






  brelse(dx_leaf_bh);
  dx_leaf_bh = ((void*)0);
  rebalanced = 1;
  goto restart_search;
 }

 lookup->dl_dx_leaf_bh = dx_leaf_bh;
 dx_leaf_bh = ((void*)0);

out:
 brelse(dx_leaf_bh);
 return ret;
}

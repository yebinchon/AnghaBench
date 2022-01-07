
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct ocfs2_inode_info {int ip_flags; scalar_t__ ip_clusters; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;


 int BUG_ON (int) ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_SYSTEM_FILE ;
 int mlog_errno (int) ;
 scalar_t__ ocfs2_clusters_for_bytes (int ,int ) ;
 int ocfs2_extend_allocation (struct inode*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ ocfs2_is_refcount_inode (struct inode*) ;
 int ocfs2_zero_extend (struct inode*,struct buffer_head*,int ) ;

int ocfs2_extend_no_holes(struct inode *inode, struct buffer_head *di_bh,
     u64 new_i_size, u64 zero_to)
{
 int ret;
 u32 clusters_to_add;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);





 BUG_ON(!di_bh && ocfs2_is_refcount_inode(inode));
 BUG_ON(!di_bh && !(oi->ip_flags & OCFS2_INODE_SYSTEM_FILE));

 clusters_to_add = ocfs2_clusters_for_bytes(inode->i_sb, new_i_size);
 if (clusters_to_add < oi->ip_clusters)
  clusters_to_add = 0;
 else
  clusters_to_add -= oi->ip_clusters;

 if (clusters_to_add) {
  ret = ocfs2_extend_allocation(inode, oi->ip_clusters,
           clusters_to_add, 0);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }






 ret = ocfs2_zero_extend(inode, di_bh, zero_to);
 if (ret < 0)
  mlog_errno(ret);

out:
 return ret;
}

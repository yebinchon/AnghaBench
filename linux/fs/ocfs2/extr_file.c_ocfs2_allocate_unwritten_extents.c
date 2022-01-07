
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int ip_dyn_features; } ;
struct TYPE_3__ {scalar_t__ s_clustersize_bits; } ;


 int ENOSPC ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 TYPE_1__* OCFS2_SB (int ) ;
 int brelse (struct buffer_head*) ;
 int mlog_errno (int) ;
 scalar_t__ ocfs2_clusters_for_bytes (int ,scalar_t__) ;
 int ocfs2_convert_inline_data_to_extents (struct inode*,struct buffer_head*) ;
 int ocfs2_extend_allocation (struct inode*,scalar_t__,scalar_t__,int) ;
 int ocfs2_get_clusters (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,int *) ;
 int ocfs2_read_inode_block (struct inode*,struct buffer_head**) ;
 scalar_t__ ocfs2_size_fits_inline_data (struct buffer_head*,scalar_t__) ;

__attribute__((used)) static int ocfs2_allocate_unwritten_extents(struct inode *inode,
         u64 start, u64 len)
{
 int ret;
 u32 cpos, phys_cpos, clusters, alloc_size;
 u64 end = start + len;
 struct buffer_head *di_bh = ((void*)0);

 if (OCFS2_I(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
  ret = ocfs2_read_inode_block(inode, &di_bh);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }





  if (ocfs2_size_fits_inline_data(di_bh, end))
   goto out;

  ret = ocfs2_convert_inline_data_to_extents(inode, di_bh);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }




 cpos = start >> OCFS2_SB(inode->i_sb)->s_clustersize_bits;
 clusters = ocfs2_clusters_for_bytes(inode->i_sb, start + len);
 clusters -= cpos;

 while (clusters) {
  ret = ocfs2_get_clusters(inode, cpos, &phys_cpos,
      &alloc_size, ((void*)0));
  if (ret) {
   mlog_errno(ret);
   goto out;
  }





  if (alloc_size > clusters)
   alloc_size = clusters;

  if (phys_cpos) {




   goto next;
  }

  ret = ocfs2_extend_allocation(inode, cpos, alloc_size, 1);
  if (ret) {
   if (ret != -ENOSPC)
    mlog_errno(ret);
   goto out;
  }

next:
  cpos += alloc_size;
  clusters -= alloc_size;
 }

 ret = 0;
out:

 brelse(di_bh);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct ocfs2_write_ctxt {TYPE_1__* w_di_bh; } ;
struct ocfs2_inode_info {int ip_dyn_features; scalar_t__ ip_clusters; scalar_t__ ip_blkno; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int i_sb; } ;
struct address_space {int dummy; } ;
typedef unsigned int loff_t ;
struct TYPE_3__ {scalar_t__ b_data; } ;


 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_DATA_FL ;
 scalar_t__ i_size_read (struct inode*) ;
 int mlog_errno (int) ;
 int ocfs2_convert_inline_data_to_extents (struct inode*,TYPE_1__*) ;
 unsigned int ocfs2_max_inline_data_with_xattr (int ,struct ocfs2_dinode*) ;
 scalar_t__ ocfs2_size_fits_inline_data (TYPE_1__*,unsigned int) ;
 int ocfs2_write_begin_inline (struct address_space*,struct inode*,struct ocfs2_write_ctxt*) ;
 int trace_ocfs2_try_to_write_inline_data (unsigned long long,unsigned int,unsigned long long,int) ;

__attribute__((used)) static int ocfs2_try_to_write_inline_data(struct address_space *mapping,
       struct inode *inode, loff_t pos,
       unsigned len, struct page *mmap_page,
       struct ocfs2_write_ctxt *wc)
{
 int ret, written = 0;
 loff_t end = pos + len;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 struct ocfs2_dinode *di = ((void*)0);

 trace_ocfs2_try_to_write_inline_data((unsigned long long)oi->ip_blkno,
          len, (unsigned long long)pos,
          oi->ip_dyn_features);




 if (oi->ip_dyn_features & OCFS2_INLINE_DATA_FL) {
  if (mmap_page == ((void*)0) &&
      ocfs2_size_fits_inline_data(wc->w_di_bh, end))
   goto do_inline_write;





  ret = ocfs2_convert_inline_data_to_extents(inode, wc->w_di_bh);
  if (ret)
   mlog_errno(ret);
  goto out;
 }




 if (oi->ip_clusters != 0 || i_size_read(inode) != 0)
  return 0;




 di = (struct ocfs2_dinode *)wc->w_di_bh->b_data;
 if (mmap_page ||
     end > ocfs2_max_inline_data_with_xattr(inode->i_sb, di))
  return 0;

do_inline_write:
 ret = ocfs2_write_begin_inline(mapping, inode, wc);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }





 written = 1;
out:
 return written ? written : ret;
}

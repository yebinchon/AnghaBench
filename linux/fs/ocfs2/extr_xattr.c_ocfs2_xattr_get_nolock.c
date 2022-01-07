
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_xattr_search {int not_found; struct buffer_head* inode_bh; } ;
struct ocfs2_inode_info {int ip_dyn_features; } ;
struct ocfs2_dinode {scalar_t__ i_xattr_loc; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int ENODATA ;
 int EOPNOTSUPP ;
 int OCFS2_HAS_XATTR_FL ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_SB (int ) ;
 int ocfs2_supports_xattr (int ) ;
 int ocfs2_xattr_block_get (struct inode*,int,char const*,void*,size_t,struct ocfs2_xattr_search*) ;
 int ocfs2_xattr_ibody_get (struct inode*,int,char const*,void*,size_t,struct ocfs2_xattr_search*) ;

int ocfs2_xattr_get_nolock(struct inode *inode,
      struct buffer_head *di_bh,
      int name_index,
      const char *name,
      void *buffer,
      size_t buffer_size)
{
 int ret;
 struct ocfs2_dinode *di = ((void*)0);
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 struct ocfs2_xattr_search xis = {
  .not_found = -ENODATA,
 };
 struct ocfs2_xattr_search xbs = {
  .not_found = -ENODATA,
 };

 if (!ocfs2_supports_xattr(OCFS2_SB(inode->i_sb)))
  return -EOPNOTSUPP;

 if (!(oi->ip_dyn_features & OCFS2_HAS_XATTR_FL))
  return -ENODATA;

 xis.inode_bh = xbs.inode_bh = di_bh;
 di = (struct ocfs2_dinode *)di_bh->b_data;

 ret = ocfs2_xattr_ibody_get(inode, name_index, name, buffer,
        buffer_size, &xis);
 if (ret == -ENODATA && di->i_xattr_loc)
  ret = ocfs2_xattr_block_get(inode, name_index, name, buffer,
         buffer_size, &xbs);

 return ret;
}

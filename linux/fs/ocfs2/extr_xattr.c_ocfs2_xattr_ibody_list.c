
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_xattr_header {int dummy; } ;
struct ocfs2_inode_info {int ip_dyn_features; } ;
struct ocfs2_dinode {int i_xattr_inline_size; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_blocksize; } ;


 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_INLINE_XATTR_FL ;
 void* le16_to_cpu (int ) ;
 int ocfs2_xattr_list_entries (struct inode*,struct ocfs2_xattr_header*,char*,size_t) ;

__attribute__((used)) static int ocfs2_xattr_ibody_list(struct inode *inode,
      struct ocfs2_dinode *di,
      char *buffer,
      size_t buffer_size)
{
 struct ocfs2_xattr_header *header = ((void*)0);
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 int ret = 0;

 if (!(oi->ip_dyn_features & OCFS2_INLINE_XATTR_FL))
  return ret;

 header = (struct ocfs2_xattr_header *)
   ((void *)di + inode->i_sb->s_blocksize -
   le16_to_cpu(di->i_xattr_inline_size));

 ret = ocfs2_xattr_list_entries(inode, header, buffer, buffer_size);

 return ret;
}

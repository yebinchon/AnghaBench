
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct path {int dentry; } ;
struct kstat {int attributes; int attributes_mask; } ;
struct inode {int i_flags; } ;
struct hfsplus_inode_info {int userflags; } ;


 int HFSPLUS_FLG_NODUMP ;
 struct hfsplus_inode_info* HFSPLUS_I (struct inode*) ;
 int STATX_ATTR_APPEND ;
 int STATX_ATTR_IMMUTABLE ;
 int STATX_ATTR_NODUMP ;
 int S_APPEND ;
 int S_IMMUTABLE ;
 struct inode* d_inode (int ) ;
 int generic_fillattr (struct inode*,struct kstat*) ;

int hfsplus_getattr(const struct path *path, struct kstat *stat,
      u32 request_mask, unsigned int query_flags)
{
 struct inode *inode = d_inode(path->dentry);
 struct hfsplus_inode_info *hip = HFSPLUS_I(inode);

 if (inode->i_flags & S_APPEND)
  stat->attributes |= STATX_ATTR_APPEND;
 if (inode->i_flags & S_IMMUTABLE)
  stat->attributes |= STATX_ATTR_IMMUTABLE;
 if (hip->userflags & HFSPLUS_FLG_NODUMP)
  stat->attributes |= STATX_ATTR_NODUMP;

 stat->attributes_mask |= STATX_ATTR_APPEND | STATX_ATTR_IMMUTABLE |
     STATX_ATTR_NODUMP;

 generic_fillattr(inode, stat);
 return 0;
}

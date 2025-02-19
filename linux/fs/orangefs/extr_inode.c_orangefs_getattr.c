
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct path {TYPE_1__* dentry; } ;
struct kstat {int result_mask; int attributes_mask; int attributes; } ;
struct inode {int i_flags; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int GOSSIP_INODE_DEBUG ;
 int ORANGEFS_GETATTR_SIZE ;
 int STATX_ATTR_APPEND ;
 int STATX_ATTR_IMMUTABLE ;
 int STATX_SIZE ;
 int S_APPEND ;
 int S_IMMUTABLE ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 int gossip_debug (int ,char*,TYPE_1__*,int) ;
 int orangefs_inode_getattr (struct inode*,int ) ;

int orangefs_getattr(const struct path *path, struct kstat *stat,
       u32 request_mask, unsigned int flags)
{
 int ret;
 struct inode *inode = path->dentry->d_inode;

 gossip_debug(GOSSIP_INODE_DEBUG,
       "orangefs_getattr: called on %pd mask %u\n",
       path->dentry, request_mask);

 ret = orangefs_inode_getattr(inode,
     request_mask & STATX_SIZE ? ORANGEFS_GETATTR_SIZE : 0);
 if (ret == 0) {
  generic_fillattr(inode, stat);


  if (!(request_mask & STATX_SIZE))
   stat->result_mask &= ~STATX_SIZE;

  stat->attributes_mask = STATX_ATTR_IMMUTABLE |
      STATX_ATTR_APPEND;
  if (inode->i_flags & S_IMMUTABLE)
   stat->attributes |= STATX_ATTR_IMMUTABLE;
  if (inode->i_flags & S_APPEND)
   stat->attributes |= STATX_ATTR_APPEND;
 }
 return ret;
}

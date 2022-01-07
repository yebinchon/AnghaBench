
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iattr {int dummy; } ;
struct dentry {int dummy; } ;


 int GOSSIP_INODE_DEBUG ;
 int __orangefs_setattr (int ,struct iattr*) ;
 int d_inode (struct dentry*) ;
 int gossip_debug (int ,char*,int) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;
 int sync_inode_metadata (int ,int) ;

int orangefs_setattr(struct dentry *dentry, struct iattr *iattr)
{
 int ret;
 gossip_debug(GOSSIP_INODE_DEBUG, "__orangefs_setattr: called on %pd\n",
     dentry);
 ret = setattr_prepare(dentry, iattr);
 if (ret)
         goto out;
 ret = __orangefs_setattr(d_inode(dentry), iattr);
 sync_inode_metadata(d_inode(dentry), 1);
out:
 gossip_debug(GOSSIP_INODE_DEBUG, "orangefs_setattr: returning %d\n",
     ret);
 return ret;
}

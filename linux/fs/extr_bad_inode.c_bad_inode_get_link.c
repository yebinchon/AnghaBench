
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;


 int EIO ;
 char const* ERR_PTR (int ) ;

__attribute__((used)) static const char *bad_inode_get_link(struct dentry *dentry,
          struct inode *inode,
          struct delayed_call *done)
{
 return ERR_PTR(-EIO);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {char const* i_link; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;



const char *simple_get_link(struct dentry *dentry, struct inode *inode,
       struct delayed_call *done)
{
 return inode->i_link;
}

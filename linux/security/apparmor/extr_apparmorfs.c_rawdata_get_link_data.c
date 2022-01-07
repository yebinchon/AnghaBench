
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;


 char const* rawdata_get_link_base (struct dentry*,struct inode*,struct delayed_call*,char*) ;

__attribute__((used)) static const char *rawdata_get_link_data(struct dentry *dentry,
      struct inode *inode,
      struct delayed_call *done)
{
 return rawdata_get_link_base(dentry, inode, done, "raw_data");
}

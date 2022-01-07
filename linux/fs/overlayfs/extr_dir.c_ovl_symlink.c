
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IFLNK ;
 int ovl_create_object (struct dentry*,int ,int ,char const*) ;

__attribute__((used)) static int ovl_symlink(struct inode *dir, struct dentry *dentry,
         const char *link)
{
 return ovl_create_object(dentry, S_IFLNK, 0, link);
}

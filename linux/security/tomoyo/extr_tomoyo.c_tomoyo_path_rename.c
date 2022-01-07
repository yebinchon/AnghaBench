
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {struct dentry* dentry; int mnt; } ;
struct dentry {int dummy; } ;


 int TOMOYO_TYPE_RENAME ;
 int tomoyo_path2_perm (int ,struct path*,struct path*) ;

__attribute__((used)) static int tomoyo_path_rename(const struct path *old_parent,
         struct dentry *old_dentry,
         const struct path *new_parent,
         struct dentry *new_dentry)
{
 struct path path1 = { .mnt = old_parent->mnt, .dentry = old_dentry };
 struct path path2 = { .mnt = new_parent->mnt, .dentry = new_dentry };

 return tomoyo_path2_perm(TOMOYO_TYPE_RENAME, &path1, &path2);
}

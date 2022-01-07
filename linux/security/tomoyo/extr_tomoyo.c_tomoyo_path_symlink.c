
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {struct dentry* dentry; int mnt; } ;
struct dentry {int dummy; } ;


 int TOMOYO_TYPE_SYMLINK ;
 int tomoyo_path_perm (int ,struct path*,char const*) ;

__attribute__((used)) static int tomoyo_path_symlink(const struct path *parent, struct dentry *dentry,
          const char *old_name)
{
 struct path path = { .mnt = parent->mnt, .dentry = dentry };

 return tomoyo_path_perm(TOMOYO_TYPE_SYMLINK, &path, old_name);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {struct dentry* dentry; int mnt; } ;
struct dentry {int dummy; } ;


 int TOMOYO_TYPE_UNLINK ;
 int tomoyo_path_perm (int ,struct path*,int *) ;

__attribute__((used)) static int tomoyo_path_unlink(const struct path *parent, struct dentry *dentry)
{
 struct path path = { .mnt = parent->mnt, .dentry = dentry };

 return tomoyo_path_perm(TOMOYO_TYPE_UNLINK, &path, ((void*)0));
}

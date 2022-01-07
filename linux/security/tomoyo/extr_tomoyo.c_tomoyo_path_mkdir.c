
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct path {struct dentry* dentry; int mnt; } ;
struct dentry {int dummy; } ;


 int S_IALLUGO ;
 int TOMOYO_TYPE_MKDIR ;
 int tomoyo_path_number_perm (int ,struct path*,int) ;

__attribute__((used)) static int tomoyo_path_mkdir(const struct path *parent, struct dentry *dentry,
        umode_t mode)
{
 struct path path = { .mnt = parent->mnt, .dentry = dentry };

 return tomoyo_path_number_perm(TOMOYO_TYPE_MKDIR, &path,
           mode & S_IALLUGO);
}

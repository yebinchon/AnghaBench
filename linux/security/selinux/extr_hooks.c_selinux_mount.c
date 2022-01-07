
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {TYPE_1__* dentry; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {int d_sb; } ;


 int FILESYSTEM__REMOUNT ;
 int FILE__MOUNTON ;
 unsigned long MS_REMOUNT ;
 struct cred* current_cred () ;
 int path_has_perm (struct cred const*,struct path const*,int ) ;
 int superblock_has_perm (struct cred const*,int ,int ,int *) ;

__attribute__((used)) static int selinux_mount(const char *dev_name,
    const struct path *path,
    const char *type,
    unsigned long flags,
    void *data)
{
 const struct cred *cred = current_cred();

 if (flags & MS_REMOUNT)
  return superblock_has_perm(cred, path->dentry->d_sb,
        FILESYSTEM__REMOUNT, ((void*)0));
 else
  return path_has_perm(cred, path, FILE__MOUNTON);
}

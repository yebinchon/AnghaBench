
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;


 int TOMOYO_TYPE_CHROOT ;
 int tomoyo_path_perm (int ,struct path const*,int *) ;

__attribute__((used)) static int tomoyo_path_chroot(const struct path *path)
{
 return tomoyo_path_perm(TOMOYO_TYPE_CHROOT, path, ((void*)0));
}

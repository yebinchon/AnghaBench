
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;


 int FILE__GETATTR ;
 int current_cred () ;
 int path_has_perm (int ,struct path const*,int ) ;

__attribute__((used)) static int selinux_inode_getattr(const struct path *path)
{
 return path_has_perm(current_cred(), path, FILE__GETATTR);
}

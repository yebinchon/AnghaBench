
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct path {int dummy; } ;


 int S_IALLUGO ;
 int TOMOYO_TYPE_CHMOD ;
 int tomoyo_path_number_perm (int ,struct path const*,int) ;

__attribute__((used)) static int tomoyo_path_chmod(const struct path *path, umode_t mode)
{
 return tomoyo_path_number_perm(TOMOYO_TYPE_CHMOD, path,
           mode & S_IALLUGO);
}

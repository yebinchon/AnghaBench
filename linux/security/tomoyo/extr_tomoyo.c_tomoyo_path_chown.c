
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int TOMOYO_TYPE_CHGRP ;
 int TOMOYO_TYPE_CHOWN ;
 int from_kgid (int *,int ) ;
 int from_kuid (int *,int ) ;
 scalar_t__ gid_valid (int ) ;
 int init_user_ns ;
 int tomoyo_path_number_perm (int ,struct path const*,int ) ;
 scalar_t__ uid_valid (int ) ;

__attribute__((used)) static int tomoyo_path_chown(const struct path *path, kuid_t uid, kgid_t gid)
{
 int error = 0;

 if (uid_valid(uid))
  error = tomoyo_path_number_perm(TOMOYO_TYPE_CHOWN, path,
      from_kuid(&init_user_ns, uid));
 if (!error && gid_valid(gid))
  error = tomoyo_path_number_perm(TOMOYO_TYPE_CHGRP, path,
      from_kgid(&init_user_ns, gid));
 return error;
}

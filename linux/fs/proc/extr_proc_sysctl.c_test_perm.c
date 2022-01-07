
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EACCES ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 int current_euid () ;
 scalar_t__ in_egroup_p (int ) ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static int test_perm(int mode, int op)
{
 if (uid_eq(current_euid(), GLOBAL_ROOT_UID))
  mode >>= 6;
 else if (in_egroup_p(GLOBAL_ROOT_GID))
  mode >>= 3;
 if ((op & ~mode & (MAY_READ|MAY_WRITE|MAY_EXEC)) == 0)
  return 0;
 return -EACCES;
}

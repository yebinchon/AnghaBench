
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ORANGEFS_sys_attr_s {int perms; } ;


 int ORANGEFS_G_EXECUTE ;
 int ORANGEFS_G_READ ;
 int ORANGEFS_G_SGID ;
 int ORANGEFS_G_WRITE ;
 int ORANGEFS_O_EXECUTE ;
 int ORANGEFS_O_READ ;
 int ORANGEFS_O_WRITE ;
 int ORANGEFS_U_EXECUTE ;
 int ORANGEFS_U_READ ;
 int ORANGEFS_U_SUID ;
 int ORANGEFS_U_WRITE ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_ISGID ;
 int S_ISUID ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;

__attribute__((used)) static int orangefs_inode_perms(struct ORANGEFS_sys_attr_s *attrs)
{
 int perm_mode = 0;

 if (attrs->perms & ORANGEFS_O_EXECUTE)
  perm_mode |= S_IXOTH;
 if (attrs->perms & ORANGEFS_O_WRITE)
  perm_mode |= S_IWOTH;
 if (attrs->perms & ORANGEFS_O_READ)
  perm_mode |= S_IROTH;

 if (attrs->perms & ORANGEFS_G_EXECUTE)
  perm_mode |= S_IXGRP;
 if (attrs->perms & ORANGEFS_G_WRITE)
  perm_mode |= S_IWGRP;
 if (attrs->perms & ORANGEFS_G_READ)
  perm_mode |= S_IRGRP;

 if (attrs->perms & ORANGEFS_U_EXECUTE)
  perm_mode |= S_IXUSR;
 if (attrs->perms & ORANGEFS_U_WRITE)
  perm_mode |= S_IWUSR;
 if (attrs->perms & ORANGEFS_U_READ)
  perm_mode |= S_IRUSR;

 if (attrs->perms & ORANGEFS_G_SGID)
  perm_mode |= S_ISGID;
 if (attrs->perms & ORANGEFS_U_SUID)
  perm_mode |= S_ISUID;

 return perm_mode;
}

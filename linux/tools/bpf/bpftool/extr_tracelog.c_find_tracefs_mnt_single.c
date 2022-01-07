
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PATH_MAX ;
 int p_err (char*) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ validate_tracefs_mnt (char const*,unsigned long) ;

__attribute__((used)) static bool
find_tracefs_mnt_single(unsigned long magic, char *mnt, const char *mntpt)
{
 size_t src_len;

 if (validate_tracefs_mnt(mntpt, magic))
  return 0;

 src_len = strlen(mntpt);
 if (src_len + 1 >= PATH_MAX) {
  p_err("tracefs mount point name too long");
  return 0;
 }

 strcpy(mnt, mntpt);
 return 1;
}

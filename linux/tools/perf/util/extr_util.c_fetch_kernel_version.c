
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int release; } ;


 int R_OK ;
 scalar_t__ access (char*,int ) ;
 int fetch_ubuntu_kernel_version (unsigned int*) ;
 int pr_debug (char*,int ) ;
 int sscanf (int ,char*,int*,int*,int*) ;
 int strncpy (char*,int ,size_t) ;
 scalar_t__ uname (struct utsname*) ;

int
fetch_kernel_version(unsigned int *puint, char *str,
       size_t str_size)
{
 struct utsname utsname;
 int version, patchlevel, sublevel, err;
 bool int_ver_ready = 0;

 if (access("/proc/version_signature", R_OK) == 0)
  if (!fetch_ubuntu_kernel_version(puint))
   int_ver_ready = 1;

 if (uname(&utsname))
  return -1;

 if (str && str_size) {
  strncpy(str, utsname.release, str_size);
  str[str_size - 1] = '\0';
 }

 if (!puint || int_ver_ready)
  return 0;

 err = sscanf(utsname.release, "%d.%d.%d",
       &version, &patchlevel, &sublevel);

 if (err != 3) {
  pr_debug("Unable to get kernel version from uname '%s'\n",
    utsname.release);
  return -1;
 }

 *puint = (version << 16) + (patchlevel << 8) + sublevel;
 return 0;
}

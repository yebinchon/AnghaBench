
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int release; } ;


 int sscanf (int ,char*,int*,int*,int*) ;
 scalar_t__ uname (struct utsname*) ;

__attribute__((used)) static int get_kernel_version(void)
{
 int version, subversion, patchlevel;
 struct utsname utsn;


 if (uname(&utsn))
  return 0;

 if (sscanf(utsn.release, "%d.%d.%d",
     &version, &subversion, &patchlevel) != 3)
  return 0;

 return (version << 16) + (subversion << 8) + patchlevel;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int machine; } ;


 int DIE_SIB_FMT ;
 int F_OK ;
 int MAXPATHLEN ;
 int access (char*,int ) ;
 int scnprintf (char*,int,int ,int ,int ) ;
 scalar_t__ strncmp (int ,char*,int) ;
 int sysfs__mountpoint () ;
 scalar_t__ uname (struct utsname*) ;

__attribute__((used)) static bool has_die_topology(void)
{
 char filename[MAXPATHLEN];
 struct utsname uts;

 if (uname(&uts) < 0)
  return 0;

 if (strncmp(uts.machine, "x86_64", 6))
  return 0;

 scnprintf(filename, MAXPATHLEN, DIE_SIB_FMT,
    sysfs__mountpoint(), 0);
 if (access(filename, F_OK) == -1)
  return 0;

 return 1;
}

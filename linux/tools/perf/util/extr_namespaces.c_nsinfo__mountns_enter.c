
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsinfo {char* mntns_path; int need_setns; } ;
struct nscookie {int oldns; int newns; char* oldcwd; } ;


 int CLONE_NEWNS ;
 int O_RDONLY ;
 int PATH_MAX ;
 int close (int) ;
 int free (char*) ;
 char* get_current_dir_name () ;
 int open (char*,int ) ;
 scalar_t__ setns (int,int ) ;
 int snprintf (char*,int,char*) ;

void nsinfo__mountns_enter(struct nsinfo *nsi,
      struct nscookie *nc)
{
 char curpath[PATH_MAX];
 int oldns = -1;
 int newns = -1;
 char *oldcwd = ((void*)0);

 if (nc == ((void*)0))
  return;

 nc->oldns = -1;
 nc->newns = -1;

 if (!nsi || !nsi->need_setns)
  return;

 if (snprintf(curpath, PATH_MAX, "/proc/self/ns/mnt") >= PATH_MAX)
  return;

 oldcwd = get_current_dir_name();
 if (!oldcwd)
  return;

 oldns = open(curpath, O_RDONLY);
 if (oldns < 0)
  goto errout;

 newns = open(nsi->mntns_path, O_RDONLY);
 if (newns < 0)
  goto errout;

 if (setns(newns, CLONE_NEWNS) < 0)
  goto errout;

 nc->oldcwd = oldcwd;
 nc->oldns = oldns;
 nc->newns = newns;
 return;

errout:
 free(oldcwd);
 if (oldns > -1)
  close(oldns);
 if (newns > -1)
  close(newns);
}

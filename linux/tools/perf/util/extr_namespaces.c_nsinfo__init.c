
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_ino; } ;
struct nsinfo {int pid; int need_setns; char* mntns_path; void* nstgid; void* tgid; } ;
typedef void* pid_t ;
typedef int FILE ;


 int PATH_MAX ;
 int asprintf (char**,char*,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strrchr (char*,char) ;
 int * strstr (char*,char*) ;
 scalar_t__ strtol (int ,int *,int) ;

int nsinfo__init(struct nsinfo *nsi)
{
 char oldns[PATH_MAX];
 char spath[PATH_MAX];
 char *newns = ((void*)0);
 char *statln = ((void*)0);
 struct stat old_stat;
 struct stat new_stat;
 FILE *f = ((void*)0);
 size_t linesz = 0;
 int rv = -1;

 if (snprintf(oldns, PATH_MAX, "/proc/self/ns/mnt") >= PATH_MAX)
  return rv;

 if (asprintf(&newns, "/proc/%d/ns/mnt", nsi->pid) == -1)
  return rv;

 if (stat(oldns, &old_stat) < 0)
  goto out;

 if (stat(newns, &new_stat) < 0)
  goto out;




 if (old_stat.st_ino != new_stat.st_ino) {
  nsi->need_setns = 1;
  nsi->mntns_path = newns;
  newns = ((void*)0);
 }




 if (snprintf(spath, PATH_MAX, "/proc/%d/status", nsi->pid) >= PATH_MAX)
  goto out;

 f = fopen(spath, "r");
 if (f == ((void*)0))
  goto out;

 while (getline(&statln, &linesz, f) != -1) {

  if (strstr(statln, "Tgid:") != ((void*)0)) {
   nsi->tgid = (pid_t)strtol(strrchr(statln, '\t'),
           ((void*)0), 10);
   nsi->nstgid = nsi->tgid;
  }

  if (strstr(statln, "NStgid:") != ((void*)0)) {
   nsi->nstgid = (pid_t)strtol(strrchr(statln, '\t'),
           ((void*)0), 10);
   break;
  }
 }
 rv = 0;

out:
 if (f != ((void*)0))
  (void) fclose(f);
 free(statln);
 free(newns);
 return rv;
}

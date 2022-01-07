
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct s390_cpumsf {int * logdir; } ;


 int S_ISDIR (int ) ;
 int pr_err (char*,char const*) ;
 int stat (int *,struct stat*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * strdup (char const*) ;
 int zfree (int **) ;

__attribute__((used)) static int s390_cpumsf__config(const char *var, const char *value, void *cb)
{
 struct s390_cpumsf *sf = cb;
 struct stat stbuf;
 int rc;

 if (strcmp(var, "auxtrace.dumpdir"))
  return 0;
 sf->logdir = strdup(value);
 if (sf->logdir == ((void*)0)) {
  pr_err("Failed to find auxtrace log directory %s,"
         " continue with current directory...\n", value);
  return 1;
 }
 rc = stat(sf->logdir, &stbuf);
 if (rc == -1 || !S_ISDIR(stbuf.st_mode)) {
  pr_err("Missing auxtrace log directory %s,"
         " continue with current directory...\n", value);
  zfree(&sf->logdir);
 }
 return 1;
}

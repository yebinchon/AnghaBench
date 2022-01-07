
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct cpu_topology {size_t core_sib; char** core_siblings; char** die_siblings; size_t die_sib; size_t thread_sib; char** thread_siblings; } ;
typedef scalar_t__ ssize_t ;
typedef int FILE ;


 int CORE_SIB_FMT ;
 int DIE_SIB_FMT ;
 int F_OK ;
 int MAXPATHLEN ;
 int THRD_SIB_FMT ;
 int THRD_SIB_FMT_NEW ;
 int access (char*,int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 scalar_t__ getline (char**,size_t*,int *) ;
 int scnprintf (char*,int,int ,int ,int) ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 int sysfs__mountpoint () ;

__attribute__((used)) static int build_cpu_topology(struct cpu_topology *tp, int cpu)
{
 FILE *fp;
 char filename[MAXPATHLEN];
 char *buf = ((void*)0), *p;
 size_t len = 0;
 ssize_t sret;
 u32 i = 0;
 int ret = -1;

 scnprintf(filename, MAXPATHLEN, CORE_SIB_FMT,
    sysfs__mountpoint(), cpu);
 fp = fopen(filename, "r");
 if (!fp)
  goto try_dies;

 sret = getline(&buf, &len, fp);
 fclose(fp);
 if (sret <= 0)
  goto try_dies;

 p = strchr(buf, '\n');
 if (p)
  *p = '\0';

 for (i = 0; i < tp->core_sib; i++) {
  if (!strcmp(buf, tp->core_siblings[i]))
   break;
 }
 if (i == tp->core_sib) {
  tp->core_siblings[i] = buf;
  tp->core_sib++;
  buf = ((void*)0);
  len = 0;
 }
 ret = 0;

try_dies:
 if (!tp->die_siblings)
  goto try_threads;

 scnprintf(filename, MAXPATHLEN, DIE_SIB_FMT,
    sysfs__mountpoint(), cpu);
 fp = fopen(filename, "r");
 if (!fp)
  goto try_threads;

 sret = getline(&buf, &len, fp);
 fclose(fp);
 if (sret <= 0)
  goto try_threads;

 p = strchr(buf, '\n');
 if (p)
  *p = '\0';

 for (i = 0; i < tp->die_sib; i++) {
  if (!strcmp(buf, tp->die_siblings[i]))
   break;
 }
 if (i == tp->die_sib) {
  tp->die_siblings[i] = buf;
  tp->die_sib++;
  buf = ((void*)0);
  len = 0;
 }
 ret = 0;

try_threads:
 scnprintf(filename, MAXPATHLEN, THRD_SIB_FMT_NEW,
    sysfs__mountpoint(), cpu);
 if (access(filename, F_OK) == -1) {
  scnprintf(filename, MAXPATHLEN, THRD_SIB_FMT,
     sysfs__mountpoint(), cpu);
 }
 fp = fopen(filename, "r");
 if (!fp)
  goto done;

 if (getline(&buf, &len, fp) <= 0)
  goto done;

 p = strchr(buf, '\n');
 if (p)
  *p = '\0';

 for (i = 0; i < tp->thread_sib; i++) {
  if (!strcmp(buf, tp->thread_siblings[i]))
   break;
 }
 if (i == tp->thread_sib) {
  tp->thread_siblings[i] = buf;
  tp->thread_sib++;
  buf = ((void*)0);
 }
 ret = 0;
done:
 if (fp)
  fclose(fp);
 free(buf);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_thread_map {int nr; int refcnt; } ;
struct dirent {int d_name; } ;
typedef int pid_t ;


 int atoi (int ) ;
 int filter ;
 int free (struct dirent**) ;
 int perf_thread_map__set_pid (struct perf_thread_map*,int,int ) ;
 int refcount_set (int *,int) ;
 int scandir (char*,struct dirent***,int ,int *) ;
 int sprintf (char*,char*,int) ;
 struct perf_thread_map* thread_map__alloc (int) ;
 int zfree (struct dirent**) ;

struct perf_thread_map *thread_map__new_by_pid(pid_t pid)
{
 struct perf_thread_map *threads;
 char name[256];
 int items;
 struct dirent **namelist = ((void*)0);
 int i;

 sprintf(name, "/proc/%d/task", pid);
 items = scandir(name, &namelist, filter, ((void*)0));
 if (items <= 0)
  return ((void*)0);

 threads = thread_map__alloc(items);
 if (threads != ((void*)0)) {
  for (i = 0; i < items; i++)
   perf_thread_map__set_pid(threads, i, atoi(namelist[i]->d_name));
  threads->nr = items;
  refcount_set(&threads->refcnt, 1);
 }

 for (i=0; i<items; i++)
  zfree(&namelist[i]);
 free(namelist);

 return threads;
}

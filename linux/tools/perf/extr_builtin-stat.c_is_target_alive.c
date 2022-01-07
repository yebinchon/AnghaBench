
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target {int dummy; } ;
struct stat {int dummy; } ;
struct perf_thread_map {int nr; TYPE_1__* map; } ;
struct TYPE_2__ {int pid; } ;


 int PATH_MAX ;
 int procfs__mountpoint () ;
 int scnprintf (char*,int,char*,int ,int ) ;
 int stat (char*,struct stat*) ;
 int target__has_task (struct target*) ;

__attribute__((used)) static bool is_target_alive(struct target *_target,
       struct perf_thread_map *threads)
{
 struct stat st;
 int i;

 if (!target__has_task(_target))
  return 1;

 for (i = 0; i < threads->nr; i++) {
  char path[PATH_MAX];

  scnprintf(path, PATH_MAX, "%s/%d", procfs__mountpoint(),
     threads->map[i].pid);

  if (!stat(path, &st))
   return 1;
 }

 return 0;
}

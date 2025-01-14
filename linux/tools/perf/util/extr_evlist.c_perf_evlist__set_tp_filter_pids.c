
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int dummy; } ;
typedef int pid_t ;


 scalar_t__ asprintf (char**,char*,char*,...) ;
 int free (char*) ;
 int perf_evlist__set_tp_filter (struct evlist*,char*) ;

int perf_evlist__set_tp_filter_pids(struct evlist *evlist, size_t npids, pid_t *pids)
{
 char *filter;
 int ret = -1;
 size_t i;

 for (i = 0; i < npids; ++i) {
  if (i == 0) {
   if (asprintf(&filter, "common_pid != %d", pids[i]) < 0)
    return -1;
  } else {
   char *tmp;

   if (asprintf(&tmp, "%s && common_pid != %d", filter, pids[i]) < 0)
    goto out_free;

   free(filter);
   filter = tmp;
  }
 }

 ret = perf_evlist__set_tp_filter(evlist, filter);
out_free:
 free(filter);
 return ret;
}

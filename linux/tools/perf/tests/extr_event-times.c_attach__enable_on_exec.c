
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct target {int uid; } ;
struct TYPE_3__ {int enable_on_exec; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct evlist {int dummy; } ;
typedef int sbuf ;


 int STRERR_BUFSIZE ;
 int TEST_FAIL ;
 int TEST_OK ;
 int UINT_MAX ;
 int errno ;
 struct evsel* evlist__last (struct evlist*) ;
 int evlist__open (struct evlist*) ;
 int perf_evlist__create_maps (struct evlist*,struct target*) ;
 int perf_evlist__prepare_workload (struct evlist*,struct target*,char const**,int,int *) ;
 int perf_evlist__start_workload (struct evlist*) ;
 int pr_debug (char*,...) ;
 int str_error_r (int ,char*,int) ;

__attribute__((used)) static int attach__enable_on_exec(struct evlist *evlist)
{
 struct evsel *evsel = evlist__last(evlist);
 struct target target = {
  .uid = UINT_MAX,
 };
 const char *argv[] = { "true", ((void*)0), };
 char sbuf[STRERR_BUFSIZE];
 int err;

 pr_debug("attaching to spawned child, enable on exec\n");

 err = perf_evlist__create_maps(evlist, &target);
 if (err < 0) {
  pr_debug("Not enough memory to create thread/cpu maps\n");
  return err;
 }

 err = perf_evlist__prepare_workload(evlist, &target, argv, 0, ((void*)0));
 if (err < 0) {
  pr_debug("Couldn't run the workload!\n");
  return err;
 }

 evsel->core.attr.enable_on_exec = 1;

 err = evlist__open(evlist);
 if (err < 0) {
  pr_debug("perf_evlist__open: %s\n",
    str_error_r(errno, sbuf, sizeof(sbuf)));
  return err;
 }

 return perf_evlist__start_workload(evlist) == 1 ? TEST_OK : TEST_FAIL;
}

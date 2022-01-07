
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msr_counter {unsigned int msr_num; unsigned int width; int type; int format; int flags; struct msr_counter* next; int path; int name; } ;
typedef enum counter_type { ____Placeholder_counter_type } counter_type ;
typedef enum counter_scope { ____Placeholder_counter_scope } counter_scope ;
typedef enum counter_format { ____Placeholder_counter_format } counter_format ;
struct TYPE_2__ {int added_core_counters; int added_package_counters; struct msr_counter* pp; struct msr_counter* cp; int added_thread_counters; struct msr_counter* tp; } ;


 int MAX_ADDED_COUNTERS ;
 int MAX_ADDED_THREAD_COUNTERS ;
 int NAME_BYTES ;
 int PATH_BYTES ;



 struct msr_counter* calloc (int,int) ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int perror (char*) ;
 int stderr ;
 int strncpy (int ,char*,int ) ;
 TYPE_1__ sys ;

int add_counter(unsigned int msr_num, char *path, char *name,
 unsigned int width, enum counter_scope scope,
 enum counter_type type, enum counter_format format, int flags)
{
 struct msr_counter *msrp;

 msrp = calloc(1, sizeof(struct msr_counter));
 if (msrp == ((void*)0)) {
  perror("calloc");
  exit(1);
 }

 msrp->msr_num = msr_num;
 strncpy(msrp->name, name, NAME_BYTES);
 if (path)
  strncpy(msrp->path, path, PATH_BYTES);
 msrp->width = width;
 msrp->type = type;
 msrp->format = format;
 msrp->flags = flags;

 switch (scope) {

 case 129:
  msrp->next = sys.tp;
  sys.tp = msrp;
  sys.added_thread_counters++;
  if (sys.added_thread_counters > MAX_ADDED_THREAD_COUNTERS) {
   fprintf(stderr, "exceeded max %d added thread counters\n",
    MAX_ADDED_COUNTERS);
   exit(-1);
  }
  break;

 case 130:
  msrp->next = sys.cp;
  sys.cp = msrp;
  sys.added_core_counters++;
  if (sys.added_core_counters > MAX_ADDED_COUNTERS) {
   fprintf(stderr, "exceeded max %d added core counters\n",
    MAX_ADDED_COUNTERS);
   exit(-1);
  }
  break;

 case 128:
  msrp->next = sys.pp;
  sys.pp = msrp;
  sys.added_package_counters++;
  if (sys.added_package_counters > MAX_ADDED_COUNTERS) {
   fprintf(stderr, "exceeded max %d added package counters\n",
    MAX_ADDED_COUNTERS);
   exit(-1);
  }
  break;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_probe_event {int nargs; int * args; int point; int uprobes; void* target; void* group; void* event; } ;
struct perf_probe_arg {int dummy; } ;


 int ENOMEM ;
 int clear_perf_probe_event (struct perf_probe_event*) ;
 int out_err ;
 scalar_t__ perf_probe_arg__copy (int *,int *) ;
 scalar_t__ perf_probe_point__copy (int *,int *) ;
 void* strdup_or_goto (void*,int ) ;
 int * zalloc (int) ;

int perf_probe_event__copy(struct perf_probe_event *dst,
      struct perf_probe_event *src)
{
 int i;

 dst->event = strdup_or_goto(src->event, out_err);
 dst->group = strdup_or_goto(src->group, out_err);
 dst->target = strdup_or_goto(src->target, out_err);
 dst->uprobes = src->uprobes;

 if (perf_probe_point__copy(&dst->point, &src->point) < 0)
  goto out_err;

 dst->args = zalloc(sizeof(struct perf_probe_arg) * src->nargs);
 if (!dst->args)
  goto out_err;
 dst->nargs = src->nargs;

 for (i = 0; i < src->nargs; i++)
  if (perf_probe_arg__copy(&dst->args[i], &src->args[i]) < 0)
   goto out_err;
 return 0;

out_err:
 clear_perf_probe_event(dst);
 return -ENOMEM;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct probe_trace_point {scalar_t__ ref_ctr_offset; } ;
struct probe_trace_event {int nargs; TYPE_1__* args; int uprobes; int event; int group; struct probe_trace_point point; } ;
struct TYPE_2__ {int value; } ;


 int free (char*) ;
 int pr_warning (char*,int ,...) ;
 scalar_t__ strglobmatch (int ,char*) ;
 char* synthesize_probe_trace_command (struct probe_trace_event*) ;
 int uprobe_ref_ctr_is_supported () ;

__attribute__((used)) static void warn_uprobe_event_compat(struct probe_trace_event *tev)
{
 int i;
 char *buf = synthesize_probe_trace_command(tev);
 struct probe_trace_point *tp = &tev->point;

 if (tp->ref_ctr_offset && !uprobe_ref_ctr_is_supported()) {
  pr_warning("A semaphore is associated with %s:%s and "
      "seems your kernel doesn't support it.\n",
      tev->group, tev->event);
 }


 if (!tev->uprobes || tev->nargs == 0 || !buf)
  goto out;

 for (i = 0; i < tev->nargs; i++)
  if (strglobmatch(tev->args[i].value, "[$@+-]*")) {
   pr_warning("Please upgrade your kernel to at least "
       "3.14 to have access to feature %s\n",
       tev->args[i].value);
   break;
  }
out:
 free(buf);
}

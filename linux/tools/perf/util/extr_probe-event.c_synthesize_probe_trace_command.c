
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct probe_trace_point {int offset; int symbol; scalar_t__ module; int address; scalar_t__ retprobe; } ;
struct probe_trace_event {int nargs; int * args; scalar_t__ uprobes; int event; int group; struct probe_trace_point point; } ;


 int strbuf_addf (struct strbuf*,char*,...) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 scalar_t__ strbuf_init (struct strbuf*,int) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strncmp (int ,char*,int) ;
 scalar_t__ synthesize_probe_trace_arg (int *,struct strbuf*) ;
 int synthesize_uprobe_trace_def (struct probe_trace_event*,struct strbuf*) ;

char *synthesize_probe_trace_command(struct probe_trace_event *tev)
{
 struct probe_trace_point *tp = &tev->point;
 struct strbuf buf;
 char *ret = ((void*)0);
 int i, err;


 if (tev->uprobes && !tp->module)
  return ((void*)0);

 if (strbuf_init(&buf, 32) < 0)
  return ((void*)0);

 if (strbuf_addf(&buf, "%c:%s/%s ", tp->retprobe ? 'r' : 'p',
   tev->group, tev->event) < 0)
  goto error;






 if (tev->uprobes && !tp->address) {
  if (!tp->symbol || strcmp(tp->symbol, "0x0"))
   goto error;
 }


 if (tev->uprobes) {
  err = synthesize_uprobe_trace_def(tev, &buf);
 } else if (!strncmp(tp->symbol, "0x", 2)) {

  err = strbuf_addf(&buf, "%s%s0x%lx", tp->module ?: "",
      tp->module ? ":" : "", tp->address);
 } else {
  err = strbuf_addf(&buf, "%s%s%s+%lu", tp->module ?: "",
    tp->module ? ":" : "", tp->symbol, tp->offset);
 }

 if (err)
  goto error;

 for (i = 0; i < tev->nargs; i++)
  if (synthesize_probe_trace_arg(&tev->args[i], &buf) < 0)
   goto error;

 ret = strbuf_detach(&buf, ((void*)0));
error:
 strbuf_release(&buf);
 return ret;
}

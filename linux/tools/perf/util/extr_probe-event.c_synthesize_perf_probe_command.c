
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct perf_probe_event {int nargs; scalar_t__ args; int point; scalar_t__ event; scalar_t__ group; } ;


 int PERFPROBE_GROUP ;
 int free (char*) ;
 scalar_t__ strbuf_addf (struct strbuf*,char*,char*,...) ;
 scalar_t__ strbuf_addstr (struct strbuf*,char*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 scalar_t__ strbuf_init (struct strbuf*,int) ;
 int strbuf_release (struct strbuf*) ;
 char* synthesize_perf_probe_arg (scalar_t__) ;
 char* synthesize_perf_probe_point (int *) ;

char *synthesize_perf_probe_command(struct perf_probe_event *pev)
{
 struct strbuf buf;
 char *tmp, *ret = ((void*)0);
 int i;

 if (strbuf_init(&buf, 64))
  return ((void*)0);
 if (pev->event)
  if (strbuf_addf(&buf, "%s:%s=", pev->group ?: PERFPROBE_GROUP,
    pev->event) < 0)
   goto out;

 tmp = synthesize_perf_probe_point(&pev->point);
 if (!tmp || strbuf_addstr(&buf, tmp) < 0)
  goto out;
 free(tmp);

 for (i = 0; i < pev->nargs; i++) {
  tmp = synthesize_perf_probe_arg(pev->args + i);
  if (!tmp || strbuf_addf(&buf, " %s", tmp) < 0)
   goto out;
  free(tmp);
 }

 ret = strbuf_detach(&buf, ((void*)0));
out:
 strbuf_release(&buf);
 return ret;
}

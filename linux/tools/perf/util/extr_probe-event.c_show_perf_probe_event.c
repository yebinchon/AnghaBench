
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct perf_probe_event {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int perf_probe_event__sprintf (char const*,char const*,struct perf_probe_event*,char const*,struct strbuf*) ;
 int pr_info (char*,char*) ;
 int printf (char*,char*) ;
 int strbuf_release (struct strbuf*) ;

int show_perf_probe_event(const char *group, const char *event,
     struct perf_probe_event *pev,
     const char *module, bool use_stdout)
{
 struct strbuf buf = STRBUF_INIT;
 int ret;

 ret = perf_probe_event__sprintf(group, event, pev, module, &buf);
 if (ret >= 0) {
  if (use_stdout)
   printf("%s\n", buf.buf);
  else
   pr_info("%s\n", buf.buf);
 }
 strbuf_release(&buf);

 return ret;
}

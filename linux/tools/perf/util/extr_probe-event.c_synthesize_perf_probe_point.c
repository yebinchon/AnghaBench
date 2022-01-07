
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct perf_probe_point {char* function; char* offset; char* line; char* file; scalar_t__ retprobe; } ;


 int strbuf_addf (struct strbuf*,char*,char*) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 scalar_t__ strbuf_init (struct strbuf*,int) ;
 int strbuf_release (struct strbuf*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

char *synthesize_perf_probe_point(struct perf_probe_point *pp)
{
 struct strbuf buf;
 char *tmp, *ret = ((void*)0);
 int len, err = 0;

 if (strbuf_init(&buf, 64) < 0)
  return ((void*)0);

 if (pp->function) {
  if (strbuf_addstr(&buf, pp->function) < 0)
   goto out;
  if (pp->offset)
   err = strbuf_addf(&buf, "+%lu", pp->offset);
  else if (pp->line)
   err = strbuf_addf(&buf, ":%d", pp->line);
  else if (pp->retprobe)
   err = strbuf_addstr(&buf, "%return");
  if (err)
   goto out;
 }
 if (pp->file) {
  tmp = pp->file;
  len = strlen(tmp);
  if (len > 30) {
   tmp = strchr(pp->file + len - 30, '/');
   tmp = tmp ? tmp + 1 : pp->file + len - 30;
  }
  err = strbuf_addf(&buf, "@%s", tmp);
  if (!err && !pp->function && pp->line)
   err = strbuf_addf(&buf, ":%d", pp->line);
 }
 if (!err)
  ret = strbuf_detach(&buf, ((void*)0));
out:
 strbuf_release(&buf);
 return ret;
}

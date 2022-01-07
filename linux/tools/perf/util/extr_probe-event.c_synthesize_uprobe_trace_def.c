
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct probe_trace_point {scalar_t__ ref_ctr_offset; int address; int module; } ;
struct probe_trace_event {struct probe_trace_point point; } ;


 int strbuf_addf (struct strbuf*,char*,scalar_t__,...) ;
 int uprobe_ref_ctr_is_supported () ;

__attribute__((used)) static int
synthesize_uprobe_trace_def(struct probe_trace_event *tev, struct strbuf *buf)
{
 struct probe_trace_point *tp = &tev->point;
 int err;

 err = strbuf_addf(buf, "%s:0x%lx", tp->module, tp->address);

 if (err >= 0 && tp->ref_ctr_offset) {
  if (!uprobe_ref_ctr_is_supported())
   return -1;
  err = strbuf_addf(buf, "(0x%lx)", tp->ref_ctr_offset);
 }
 return err >= 0 ? 0 : -1;
}

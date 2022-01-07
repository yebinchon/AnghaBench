
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct probe_trace_arg_ref {int offset; struct probe_trace_arg_ref* next; } ;


 int strbuf_addf (struct strbuf*,char*,int ) ;

__attribute__((used)) static int __synthesize_probe_trace_arg_ref(struct probe_trace_arg_ref *ref,
         struct strbuf *buf, int depth)
{
 int err;
 if (ref->next) {
  depth = __synthesize_probe_trace_arg_ref(ref->next, buf,
        depth + 1);
  if (depth < 0)
   return depth;
 }
 err = strbuf_addf(buf, "%+ld(", ref->offset);
 return (err < 0) ? err : depth;
}

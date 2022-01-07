
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void u8 ;
struct trace_seq {int dummy; } ;
struct probe_arg {int count; int offset; TYPE_1__* type; int name; } ;
struct TYPE_2__ {int size; int (* print ) (struct trace_seq*,void*,void*) ;} ;


 int ENOMEM ;
 scalar_t__ likely (int) ;
 int stub1 (struct trace_seq*,void*,void*) ;
 int stub2 (struct trace_seq*,void*,void*) ;
 int trace_seq_printf (struct trace_seq*,char*,int ) ;
 int trace_seq_putc (struct trace_seq*,char) ;

__attribute__((used)) static inline int
print_probe_args(struct trace_seq *s, struct probe_arg *args, int nr_args,
   u8 *data, void *field)
{
 void *p;
 int i, j;

 for (i = 0; i < nr_args; i++) {
  struct probe_arg *a = args + i;

  trace_seq_printf(s, " %s=", a->name);
  if (likely(!a->count)) {
   if (!a->type->print(s, data + a->offset, field))
    return -ENOMEM;
   continue;
  }
  trace_seq_putc(s, '{');
  p = data + a->offset;
  for (j = 0; j < a->count; j++) {
   if (!a->type->print(s, p, field))
    return -ENOMEM;
   trace_seq_putc(s, j == a->count - 1 ? '}' : ',');
   p += a->type->size;
  }
 }
 return 0;
}

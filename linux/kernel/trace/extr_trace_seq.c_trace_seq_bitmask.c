
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int len; } ;
struct trace_seq {int full; TYPE_1__ seq; } ;


 int __trace_seq_init (struct trace_seq*) ;
 int seq_buf_has_overflowed (TYPE_1__*) ;
 int seq_buf_printf (TYPE_1__*,char*,int,unsigned long const*) ;
 scalar_t__ unlikely (int ) ;

void trace_seq_bitmask(struct trace_seq *s, const unsigned long *maskp,
        int nmaskbits)
{
 unsigned int save_len = s->seq.len;

 if (s->full)
  return;

 __trace_seq_init(s);

 seq_buf_printf(&s->seq, "%*pb", nmaskbits, maskp);

 if (unlikely(seq_buf_has_overflowed(&s->seq))) {
  s->seq.len = save_len;
  s->full = 1;
 }
}

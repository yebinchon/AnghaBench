
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int len; } ;
struct trace_seq {int full; TYPE_1__ seq; } ;


 unsigned int TRACE_SEQ_BUF_LEFT (struct trace_seq*) ;
 int __trace_seq_init (struct trace_seq*) ;
 int seq_buf_has_overflowed (TYPE_1__*) ;
 int seq_buf_putmem_hex (TYPE_1__*,void const*,unsigned int) ;
 scalar_t__ unlikely (int ) ;

void trace_seq_putmem_hex(struct trace_seq *s, const void *mem,
    unsigned int len)
{
 unsigned int save_len = s->seq.len;

 if (s->full)
  return;

 __trace_seq_init(s);


 if (len * 2 > TRACE_SEQ_BUF_LEFT(s)) {
  s->full = 1;
  return;
 }


 seq_buf_putmem_hex(&s->seq, mem, len);

 if (unlikely(seq_buf_has_overflowed(&s->seq))) {
  s->seq.len = save_len;
  s->full = 1;
  return;
 }
}

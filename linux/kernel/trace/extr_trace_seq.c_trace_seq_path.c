
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int len; } ;
struct trace_seq {int full; TYPE_1__ seq; } ;
struct path {int dummy; } ;


 int TRACE_SEQ_BUF_LEFT (struct trace_seq*) ;
 int __trace_seq_init (struct trace_seq*) ;
 int seq_buf_has_overflowed (TYPE_1__*) ;
 int seq_buf_path (TYPE_1__*,struct path const*,char*) ;
 scalar_t__ unlikely (int ) ;

int trace_seq_path(struct trace_seq *s, const struct path *path)
{
 unsigned int save_len = s->seq.len;

 if (s->full)
  return 0;

 __trace_seq_init(s);

 if (TRACE_SEQ_BUF_LEFT(s) < 1) {
  s->full = 1;
  return 0;
 }

 seq_buf_path(&s->seq, path, "\n");

 if (unlikely(seq_buf_has_overflowed(&s->seq))) {
  s->seq.len = save_len;
  s->full = 1;
  return 0;
 }

 return 1;
}

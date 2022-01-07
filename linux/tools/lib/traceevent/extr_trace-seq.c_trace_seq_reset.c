
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {scalar_t__ readpos; scalar_t__ len; } ;


 int TRACE_SEQ_CHECK (struct trace_seq*) ;

void trace_seq_reset(struct trace_seq *s)
{
 if (!s)
  return;
 TRACE_SEQ_CHECK(s);
 s->len = 0;
 s->readpos = 0;
}

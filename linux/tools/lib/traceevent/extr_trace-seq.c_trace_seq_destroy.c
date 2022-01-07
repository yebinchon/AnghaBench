
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int buffer; } ;


 int TRACE_SEQ_CHECK_RET (struct trace_seq*) ;
 int TRACE_SEQ_POISON ;
 int free (int ) ;

void trace_seq_destroy(struct trace_seq *s)
{
 if (!s)
  return;
 TRACE_SEQ_CHECK_RET(s);
 free(s->buffer);
 s->buffer = TRACE_SEQ_POISON;
}

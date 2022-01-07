
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int state; int * buffer; int buffer_size; scalar_t__ readpos; scalar_t__ len; } ;


 int TRACE_SEQ_BUF_SIZE ;
 int TRACE_SEQ__GOOD ;
 int TRACE_SEQ__MEM_ALLOC_FAILED ;
 int * malloc (int ) ;

void trace_seq_init(struct trace_seq *s)
{
 s->len = 0;
 s->readpos = 0;
 s->buffer_size = TRACE_SEQ_BUF_SIZE;
 s->buffer = malloc(s->buffer_size);
 if (s->buffer != ((void*)0))
  s->state = TRACE_SEQ__GOOD;
 else
  s->state = TRACE_SEQ__MEM_ALLOC_FAILED;
}

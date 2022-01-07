
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int state; char* len; int buffer; } ;
typedef int FILE ;


 int TRACE_SEQ_CHECK (struct trace_seq*) ;



 int fprintf (int *,char*,char*,...) ;

int trace_seq_do_fprintf(struct trace_seq *s, FILE *fp)
{
 TRACE_SEQ_CHECK(s);

 switch (s->state) {
 case 129:
  return fprintf(fp, "%.*s", s->len, s->buffer);
 case 130:
  fprintf(fp, "%s\n", "Usage of trace_seq after it was destroyed");
  break;
 case 128:
  fprintf(fp, "%s\n", "Can't allocate trace_seq buffer memory");
  break;
 }
 return -1;
}

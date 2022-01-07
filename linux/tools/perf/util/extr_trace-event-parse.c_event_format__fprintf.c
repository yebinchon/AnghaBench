
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct tep_record {int cpu; int size; void* data; } ;
struct tep_event {int tep; } ;
typedef int record ;
typedef int FILE ;


 int TEP_PRINT_INFO ;
 int memset (struct tep_record*,int ,int) ;
 int tep_print_event (int ,struct trace_seq*,struct tep_record*,char*,int ) ;
 int trace_seq_destroy (struct trace_seq*) ;
 int trace_seq_do_fprintf (struct trace_seq*,int *) ;
 int trace_seq_init (struct trace_seq*) ;

void event_format__fprintf(struct tep_event *event,
      int cpu, void *data, int size, FILE *fp)
{
 struct tep_record record;
 struct trace_seq s;

 memset(&record, 0, sizeof(record));
 record.cpu = cpu;
 record.size = size;
 record.data = data;

 trace_seq_init(&s);
 tep_print_event(event->tep, &s, &record, "%s", TEP_PRINT_INFO);
 trace_seq_do_fprintf(&s, fp);
 trace_seq_destroy(&s);
}

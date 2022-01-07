
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_seq {int len; char* buffer; } ;
struct tep_record {scalar_t__ data; } ;
struct tep_format_field {TYPE_1__* event; int size; scalar_t__ offset; } ;
struct TYPE_2__ {int tep; } ;


 int tep_register_comm (int ,char const*,int) ;
 int trace_seq_printf (struct trace_seq*,char*,int ,char const*) ;
 int trace_seq_terminate (struct trace_seq*) ;

__attribute__((used)) static void write_and_save_comm(struct tep_format_field *field,
    struct tep_record *record,
    struct trace_seq *s, int pid)
{
 const char *comm;
 int len;

 comm = (char *)(record->data + field->offset);
 len = s->len;
 trace_seq_printf(s, "%.*s",
    field->size, comm);


 trace_seq_terminate(s);
 comm = &s->buffer[len];


 tep_register_comm(field->event->tep, comm, pid);
}

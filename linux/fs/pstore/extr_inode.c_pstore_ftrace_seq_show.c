
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct pstore_private* private; } ;
struct pstore_private {TYPE_1__* record; } ;
struct pstore_ftrace_seq_data {scalar_t__ off; } ;
struct pstore_ftrace_record {scalar_t__ parent_ip; scalar_t__ ip; } ;
struct TYPE_2__ {scalar_t__ buf; } ;


 int pstore_ftrace_decode_cpu (struct pstore_ftrace_record*) ;
 int pstore_ftrace_read_timestamp (struct pstore_ftrace_record*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,scalar_t__,scalar_t__,void*,void*) ;

__attribute__((used)) static int pstore_ftrace_seq_show(struct seq_file *s, void *v)
{
 struct pstore_private *ps = s->private;
 struct pstore_ftrace_seq_data *data = v;
 struct pstore_ftrace_record *rec;

 rec = (struct pstore_ftrace_record *)(ps->record->buf + data->off);

 seq_printf(s, "CPU:%d ts:%llu %08lx  %08lx  %ps <- %pS\n",
     pstore_ftrace_decode_cpu(rec),
     pstore_ftrace_read_timestamp(rec),
     rec->ip, rec->parent_ip, (void *)rec->ip,
     (void *)rec->parent_ip);

 return 0;
}

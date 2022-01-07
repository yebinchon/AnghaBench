
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct ima_template_entry {char* pcr; TYPE_3__* template_data; TYPE_2__* template_desc; int digest; } ;
struct ima_queue_entry {struct ima_template_entry* entry; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_5__ {char* name; char* fmt; int num_fields; TYPE_1__** fields; } ;
struct TYPE_4__ {int (* field_show ) (struct seq_file*,int ,TYPE_3__*) ;} ;


 int IMA_SHOW_ASCII ;
 int TPM_DIGEST_SIZE ;
 int ima_print_digest (struct seq_file*,int ,int ) ;
 int seq_printf (struct seq_file*,char*,char*) ;
 int seq_puts (struct seq_file*,char*) ;
 int stub1 (struct seq_file*,int ,TYPE_3__*) ;

__attribute__((used)) static int ima_ascii_measurements_show(struct seq_file *m, void *v)
{

 struct ima_queue_entry *qe = v;
 struct ima_template_entry *e;
 char *template_name;
 int i;


 e = qe->entry;
 if (e == ((void*)0))
  return -1;

 template_name = (e->template_desc->name[0] != '\0') ?
     e->template_desc->name : e->template_desc->fmt;


 seq_printf(m, "%2d ", e->pcr);


 ima_print_digest(m, e->digest, TPM_DIGEST_SIZE);


 seq_printf(m, " %s", template_name);


 for (i = 0; i < e->template_desc->num_fields; i++) {
  seq_puts(m, " ");
  if (e->template_data[i].len == 0)
   continue;

  e->template_desc->fields[i]->field_show(m, IMA_SHOW_ASCII,
       &e->template_data[i]);
 }
 seq_puts(m, "\n");
 return 0;
}

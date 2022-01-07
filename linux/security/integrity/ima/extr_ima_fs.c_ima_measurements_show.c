
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u32 ;
struct seq_file {int dummy; } ;
struct ima_template_field {char* field_id; int (* field_show ) (struct seq_file*,int,int *) ;} ;
struct ima_template_entry {int pcr; char* digest; int template_data_len; int * template_data; TYPE_1__* template_desc; } ;
struct ima_queue_entry {struct ima_template_entry* entry; } ;
typedef int namelen ;
typedef enum ima_show_type { ____Placeholder_ima_show_type } ima_show_type ;
struct TYPE_2__ {char* name; char* fmt; int num_fields; struct ima_template_field** fields; } ;


 int IMA_SHOW_BINARY ;
 int IMA_SHOW_BINARY_NO_FIELD_LEN ;
 int IMA_SHOW_BINARY_OLD_STRING_FMT ;
 char* IMA_TEMPLATE_IMA_NAME ;
 int TPM_DIGEST_SIZE ;
 int cpu_to_le32 (int) ;
 int ima_canonical_fmt ;
 int ima_putc (struct seq_file*,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int stub1 (struct seq_file*,int,int *) ;

int ima_measurements_show(struct seq_file *m, void *v)
{

 struct ima_queue_entry *qe = v;
 struct ima_template_entry *e;
 char *template_name;
 u32 pcr, namelen, template_data_len;
 bool is_ima_template = 0;
 int i;


 e = qe->entry;
 if (e == ((void*)0))
  return -1;

 template_name = (e->template_desc->name[0] != '\0') ?
     e->template_desc->name : e->template_desc->fmt;






 pcr = !ima_canonical_fmt ? e->pcr : cpu_to_le32(e->pcr);
 ima_putc(m, &pcr, sizeof(e->pcr));


 ima_putc(m, e->digest, TPM_DIGEST_SIZE);


 namelen = !ima_canonical_fmt ? strlen(template_name) :
  cpu_to_le32(strlen(template_name));
 ima_putc(m, &namelen, sizeof(namelen));


 ima_putc(m, template_name, strlen(template_name));


 if (strcmp(template_name, IMA_TEMPLATE_IMA_NAME) == 0)
  is_ima_template = 1;

 if (!is_ima_template) {
  template_data_len = !ima_canonical_fmt ? e->template_data_len :
   cpu_to_le32(e->template_data_len);
  ima_putc(m, &template_data_len, sizeof(e->template_data_len));
 }


 for (i = 0; i < e->template_desc->num_fields; i++) {
  enum ima_show_type show = IMA_SHOW_BINARY;
  const struct ima_template_field *field =
   e->template_desc->fields[i];

  if (is_ima_template && strcmp(field->field_id, "d") == 0)
   show = IMA_SHOW_BINARY_NO_FIELD_LEN;
  if (is_ima_template && strcmp(field->field_id, "n") == 0)
   show = IMA_SHOW_BINARY_OLD_STRING_FMT;
  field->field_show(m, show, &e->template_data[i]);
 }
 return 0;
}

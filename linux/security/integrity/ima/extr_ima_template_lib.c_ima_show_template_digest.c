
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct ima_field_data {int dummy; } ;
typedef enum ima_show_type { ____Placeholder_ima_show_type } ima_show_type ;


 int DATA_FMT_DIGEST ;
 int ima_show_template_field_data (struct seq_file*,int,int ,struct ima_field_data*) ;

void ima_show_template_digest(struct seq_file *m, enum ima_show_type show,
         struct ima_field_data *field_data)
{
 ima_show_template_field_data(m, show, DATA_FMT_DIGEST, field_data);
}

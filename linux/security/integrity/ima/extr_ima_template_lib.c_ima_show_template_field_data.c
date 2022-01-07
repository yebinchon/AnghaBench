
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct ima_field_data {int dummy; } ;
typedef enum ima_show_type { ____Placeholder_ima_show_type } ima_show_type ;
typedef enum data_formats { ____Placeholder_data_formats } data_formats ;






 int ima_show_template_data_ascii (struct seq_file*,int,int,struct ima_field_data*) ;
 int ima_show_template_data_binary (struct seq_file*,int,int,struct ima_field_data*) ;

__attribute__((used)) static void ima_show_template_field_data(struct seq_file *m,
      enum ima_show_type show,
      enum data_formats datafmt,
      struct ima_field_data *field_data)
{
 switch (show) {
 case 131:
  ima_show_template_data_ascii(m, show, datafmt, field_data);
  break;
 case 130:
 case 129:
 case 128:
  ima_show_template_data_binary(m, show, datafmt, field_data);
  break;
 default:
  break;
 }
}

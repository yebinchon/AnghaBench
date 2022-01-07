
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct seq_file {int dummy; } ;
struct ima_field_data {int len; int * data; } ;
typedef enum ima_show_type { ____Placeholder_ima_show_type } ima_show_type ;
typedef enum data_formats { ____Placeholder_data_formats } data_formats ;






 int ima_print_digest (struct seq_file*,int *,int) ;
 int seq_printf (struct seq_file*,char*,int *) ;
 int * strnchr (int *,int,char) ;

__attribute__((used)) static void ima_show_template_data_ascii(struct seq_file *m,
      enum ima_show_type show,
      enum data_formats datafmt,
      struct ima_field_data *field_data)
{
 u8 *buf_ptr = field_data->data;
 u32 buflen = field_data->len;

 switch (datafmt) {
 case 130:
  buf_ptr = strnchr(field_data->data, buflen, ':');
  if (buf_ptr != field_data->data)
   seq_printf(m, "%s", field_data->data);


  buf_ptr += 2;
  buflen -= buf_ptr - field_data->data;

 case 131:
 case 129:
  if (!buflen)
   break;
  ima_print_digest(m, buf_ptr, buflen);
  break;
 case 128:
  seq_printf(m, "%s", buf_ptr);
  break;
 default:
  break;
 }
}

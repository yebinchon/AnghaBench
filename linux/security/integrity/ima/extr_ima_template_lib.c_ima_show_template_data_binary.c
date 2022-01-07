
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;
struct ima_field_data {int* data; int len; } ;
typedef int field_len ;
typedef enum ima_show_type { ____Placeholder_ima_show_type } ima_show_type ;
typedef enum data_formats { ____Placeholder_data_formats } data_formats ;


 int IMA_SHOW_BINARY_NO_FIELD_LEN ;
 int IMA_SHOW_BINARY_OLD_STRING_FMT ;
 int cpu_to_le32 (int) ;
 int ima_canonical_fmt ;
 int ima_putc (struct seq_file*,int*,int) ;
 int strlen (int*) ;

__attribute__((used)) static void ima_show_template_data_binary(struct seq_file *m,
       enum ima_show_type show,
       enum data_formats datafmt,
       struct ima_field_data *field_data)
{
 u32 len = (show == IMA_SHOW_BINARY_OLD_STRING_FMT) ?
     strlen(field_data->data) : field_data->len;

 if (show != IMA_SHOW_BINARY_NO_FIELD_LEN) {
  u32 field_len = !ima_canonical_fmt ? len : cpu_to_le32(len);

  ima_putc(m, &field_len, sizeof(field_len));
 }

 if (!len)
  return;

 ima_putc(m, field_data->data, len);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ima_field_data {int dummy; } ;
struct ima_event_data {scalar_t__ buf_len; int buf; } ;


 int DATA_FMT_HEX ;
 int ima_write_template_field_data (int ,scalar_t__,int ,struct ima_field_data*) ;

int ima_eventbuf_init(struct ima_event_data *event_data,
        struct ima_field_data *field_data)
{
 if ((!event_data->buf) || (event_data->buf_len == 0))
  return 0;

 return ima_write_template_field_data(event_data->buf,
          event_data->buf_len, DATA_FMT_HEX,
          field_data);
}

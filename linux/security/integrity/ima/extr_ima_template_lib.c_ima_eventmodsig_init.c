
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ima_field_data {int dummy; } ;
struct ima_event_data {int modsig; } ;


 int DATA_FMT_HEX ;
 int ima_get_raw_modsig (int ,void const**,int *) ;
 int ima_write_template_field_data (void const*,int ,int ,struct ima_field_data*) ;

int ima_eventmodsig_init(struct ima_event_data *event_data,
    struct ima_field_data *field_data)
{
 const void *data;
 u32 data_len;
 int rc;

 if (!event_data->modsig)
  return 0;





 rc = ima_get_raw_modsig(event_data->modsig, &data, &data_len);
 if (rc)
  return rc;

 return ima_write_template_field_data(data, data_len, DATA_FMT_HEX,
          field_data);
}

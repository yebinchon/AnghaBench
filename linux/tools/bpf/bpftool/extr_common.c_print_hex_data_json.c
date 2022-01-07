
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int json_wtr ;
 int jsonw_end_array (int ) ;
 int jsonw_printf (int ,char*,int ) ;
 int jsonw_start_array (int ) ;

void print_hex_data_json(uint8_t *data, size_t len)
{
 unsigned int i;

 jsonw_start_array(json_wtr);
 for (i = 0; i < len; i++)
  jsonw_printf(json_wtr, "\"0x%02hhx\"", data[i]);
 jsonw_end_array(json_wtr);
}

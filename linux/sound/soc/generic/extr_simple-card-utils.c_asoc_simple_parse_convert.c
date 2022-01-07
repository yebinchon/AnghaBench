
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct asoc_simple_data {int convert_channels; int convert_rate; } ;
typedef int prop ;


 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int snprintf (char*,int,char*,char*,char*) ;

void asoc_simple_parse_convert(struct device *dev,
          struct device_node *np,
          char *prefix,
          struct asoc_simple_data *data)
{
 char prop[128];

 if (!prefix)
  prefix = "";


 snprintf(prop, sizeof(prop), "%s%s", prefix, "convert-rate");
 of_property_read_u32(np, prop, &data->convert_rate);


 snprintf(prop, sizeof(prop), "%s%s", prefix, "convert-channels");
 of_property_read_u32(np, prop, &data->convert_channels);
}

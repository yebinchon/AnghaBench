
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {TYPE_1__* dev; } ;
struct adau1761_platform_data {int lineout_mode; } ;
typedef enum adau1761_output_mode { ____Placeholder_adau1761_output_mode } adau1761_output_mode ;
struct TYPE_2__ {struct adau1761_platform_data* platform_data; } ;


 int ADAU1761_OUTPUT_MODE_LINE ;

__attribute__((used)) static enum adau1761_output_mode adau1761_get_lineout_mode(
 struct snd_soc_component *component)
{
 struct adau1761_platform_data *pdata = component->dev->platform_data;

 if (pdata)
  return pdata->lineout_mode;

 return ADAU1761_OUTPUT_MODE_LINE;
}

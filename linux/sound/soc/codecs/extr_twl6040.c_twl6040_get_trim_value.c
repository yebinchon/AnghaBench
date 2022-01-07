
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum twl6040_trim { ____Placeholder_twl6040_trim } twl6040_trim ;


 int EINVAL ;
 int TWL6040_REG_TRIM1 ;
 int TWL6040_TRIM_INVAL ;
 int twl6040_read (struct snd_soc_component*,int) ;
 scalar_t__ unlikely (int) ;

int twl6040_get_trim_value(struct snd_soc_component *component, enum twl6040_trim trim)
{
 if (unlikely(trim >= TWL6040_TRIM_INVAL))
  return -EINVAL;

 return twl6040_read(component, TWL6040_REG_TRIM1 + trim);
}

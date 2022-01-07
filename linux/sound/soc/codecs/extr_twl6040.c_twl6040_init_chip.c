
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int TWL6040_REG_EARCTL ;
 int TWL6040_REG_HFLGAIN ;
 int TWL6040_REG_HFOTRIM ;
 int TWL6040_REG_HFRGAIN ;
 int TWL6040_REG_HSGAIN ;
 int TWL6040_REG_HSOTRIM ;
 int TWL6040_REG_LINEGAIN ;
 int TWL6040_REG_MICLCTL ;
 int TWL6040_REG_MICRCTL ;
 int TWL6040_REG_TRIM1 ;
 int TWL6040_REG_TRIM2 ;
 int TWL6040_REG_TRIM3 ;
 int twl6040_read (struct snd_soc_component*,int ) ;
 int twl6040_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static void twl6040_init_chip(struct snd_soc_component *component)
{
 twl6040_read(component, TWL6040_REG_TRIM1);
 twl6040_read(component, TWL6040_REG_TRIM2);
 twl6040_read(component, TWL6040_REG_TRIM3);
 twl6040_read(component, TWL6040_REG_HSOTRIM);
 twl6040_read(component, TWL6040_REG_HFOTRIM);



 twl6040_write(component, TWL6040_REG_MICLCTL, 0x18);
 twl6040_write(component, TWL6040_REG_MICRCTL, 0x18);






 twl6040_write(component, TWL6040_REG_HSGAIN, 0xff);
 twl6040_write(component, TWL6040_REG_EARCTL, 0x1e);
 twl6040_write(component, TWL6040_REG_HFLGAIN, 0x1d);
 twl6040_write(component, TWL6040_REG_HFRGAIN, 0x1d);
 twl6040_write(component, TWL6040_REG_LINEGAIN, 0);
}

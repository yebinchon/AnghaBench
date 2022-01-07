
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct axg_spdifin {TYPE_1__* conf; int map; } ;
struct TYPE_2__ {unsigned int* mode_rates; } ;


 unsigned int FIELD_GET (int ,unsigned int) ;
 unsigned int SPDIFIN_MODE_NUM ;
 int SPDIFIN_STAT0 ;
 int SPDIFIN_STAT0_MAXW ;
 int SPDIFIN_STAT0_MODE ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static unsigned int axg_spdifin_get_rate(struct axg_spdifin *priv)
{
 unsigned int stat, mode, rate = 0;

 regmap_read(priv->map, SPDIFIN_STAT0, &stat);
 mode = FIELD_GET(SPDIFIN_STAT0_MODE, stat);






 if (FIELD_GET(SPDIFIN_STAT0_MAXW, stat) &&
     mode < SPDIFIN_MODE_NUM)
  rate = priv->conf->mode_rates[mode];

 return rate;
}

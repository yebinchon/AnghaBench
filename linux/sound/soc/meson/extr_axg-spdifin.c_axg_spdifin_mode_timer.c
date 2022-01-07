
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct axg_spdifin {TYPE_1__* conf; } ;
struct TYPE_2__ {int* mode_rates; } ;



__attribute__((used)) static unsigned int axg_spdifin_mode_timer(struct axg_spdifin *priv,
        int mode,
        unsigned int rate)
{




 return rate / (128 * priv->conf->mode_rates[mode]);
}

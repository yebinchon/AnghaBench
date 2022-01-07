
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int step; int max; int min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 int UNIPERIF_PLAYER_CLK_ADJ_MAX ;
 int UNIPERIF_PLAYER_CLK_ADJ_MIN ;

__attribute__((used)) static int snd_sti_clk_adjustment_info(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_info *uinfo)
{
 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = 1;
 uinfo->value.integer.min = UNIPERIF_PLAYER_CLK_ADJ_MIN;
 uinfo->value.integer.max = UNIPERIF_PLAYER_CLK_ADJ_MAX;
 uinfo->value.integer.step = 1;

 return 0;
}

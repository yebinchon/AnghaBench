
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dai {int ctrl_blk; TYPE_1__* hw; } ;
struct TYPE_2__ {int (* dai_srt_set_et ) (int ,unsigned int) ;} ;


 int stub1 (int ,unsigned int) ;

__attribute__((used)) static int dai_set_enb_srt(struct dai *dai, unsigned int enb)
{
 dai->hw->dai_srt_set_et(dai->ctrl_blk, enb);
 return 0;
}

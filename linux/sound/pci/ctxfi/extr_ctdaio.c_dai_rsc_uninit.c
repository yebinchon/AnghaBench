
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dai {int daio; int * ctrl_blk; TYPE_1__* hw; } ;
struct TYPE_2__ {int (* dai_put_ctrl_blk ) (int *) ;} ;


 int daio_rsc_uninit (int *) ;
 int stub1 (int *) ;

__attribute__((used)) static int dai_rsc_uninit(struct dai *dai)
{
 dai->hw->dai_put_ctrl_blk(dai->ctrl_blk);
 dai->hw = dai->ctrl_blk = ((void*)0);
 daio_rsc_uninit(&dai->daio);
 return 0;
}

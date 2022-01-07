
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rsc {TYPE_2__* ops; } ;
struct dai {int ctrl_blk; TYPE_1__* hw; } ;
struct TYPE_4__ {int (* index ) (struct rsc*) ;int (* master ) (struct rsc*) ;} ;
struct TYPE_3__ {int (* dai_srt_set_srcm ) (int ,int ) ;} ;


 int stub1 (struct rsc*) ;
 int stub2 (int ,int ) ;
 int stub3 (struct rsc*) ;

__attribute__((used)) static int dai_set_srt_srcl(struct dai *dai, struct rsc *src)
{
 src->ops->master(src);
 dai->hw->dai_srt_set_srcm(dai->ctrl_blk, src->ops->index(src));
 return 0;
}

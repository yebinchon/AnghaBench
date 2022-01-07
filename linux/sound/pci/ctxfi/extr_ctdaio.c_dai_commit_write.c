
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct dai {int ctrl_blk; TYPE_2__* hw; TYPE_1__ daio; } ;
struct TYPE_5__ {int (* dai_commit_write ) (TYPE_2__*,int ,int ) ;} ;


 int daio_device_index (int ,TYPE_2__*) ;
 int stub1 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int dai_commit_write(struct dai *dai)
{
 dai->hw->dai_commit_write(dai->hw,
  daio_device_index(dai->daio.type, dai->hw), dai->ctrl_blk);
 return 0;
}

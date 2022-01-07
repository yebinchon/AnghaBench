
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
struct dao {int ctrl_blk; TYPE_2__* hw; TYPE_1__ daio; } ;
struct TYPE_5__ {int (* dao_commit_write ) (TYPE_2__*,int ,int ) ;} ;


 int daio_device_index (int ,TYPE_2__*) ;
 int stub1 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int dao_commit_write(struct dao *dao)
{
 dao->hw->dao_commit_write(dao->hw,
  daio_device_index(dao->daio.type, dao->hw), dao->ctrl_blk);
 return 0;
}

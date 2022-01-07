
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dao {int ctrl_blk; TYPE_1__* hw; } ;
struct TYPE_2__ {int (* dao_set_spos ) (int ,unsigned int) ;} ;


 int stub1 (int ,unsigned int) ;

__attribute__((used)) static int dao_spdif_set_spos(struct dao *dao, unsigned int spos)
{
 dao->hw->dao_set_spos(dao->ctrl_blk, spos);
 return 0;
}

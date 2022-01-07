
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl_blk; struct hw* hw; } ;
struct src_mgr {TYPE_1__ mgr; } ;
struct hw {int (* src_mgr_commit_write ) (struct hw*,int ) ;} ;


 int stub1 (struct hw*,int ) ;

__attribute__((used)) static int src_mgr_commit_write(struct src_mgr *mgr)
{
 struct hw *hw = mgr->mgr.hw;

 hw->src_mgr_commit_write(hw, mgr->mgr.ctrl_blk);

 return 0;
}

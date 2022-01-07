
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ctrl_blk; struct hw* hw; } ;
struct src_mgr {TYPE_1__ mgr; } ;
struct TYPE_9__ {int msr; TYPE_2__* ops; } ;
struct src {TYPE_3__ rsc; } ;
struct hw {int (* src_mgr_dsb_src ) (int ,int ) ;} ;
struct TYPE_8__ {int (* master ) (TYPE_3__*) ;int (* next_conj ) (TYPE_3__*) ;int (* index ) (TYPE_3__*) ;} ;


 int stub1 (TYPE_3__*) ;
 int stub2 (int ,int ) ;
 int stub3 (TYPE_3__*) ;
 int stub4 (TYPE_3__*) ;
 int stub5 (TYPE_3__*) ;

__attribute__((used)) static int src_disable(struct src_mgr *mgr, struct src *src)
{
 struct hw *hw = mgr->mgr.hw;
 int i;

 src->rsc.ops->master(&src->rsc);
 for (i = 0; i < src->rsc.msr; i++) {
  hw->src_mgr_dsb_src(mgr->mgr.ctrl_blk,
        src->rsc.ops->index(&src->rsc));
  src->rsc.ops->next_conj(&src->rsc);
 }
 src->rsc.ops->master(&src->rsc);

 return 0;
}

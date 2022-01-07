
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ctrl_blk; TYPE_1__* ops; struct hw* hw; } ;
struct src {TYPE_2__ rsc; } ;
struct hw {int (* src_get_ca ) (struct hw*,int ,int ) ;} ;
struct TYPE_3__ {int (* index ) (TYPE_2__*) ;} ;


 int stub1 (struct hw*,int ,int ) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static int src_get_ca(struct src *src)
{
 struct hw *hw;

 hw = src->rsc.hw;
 return hw->src_get_ca(hw, src->rsc.ops->index(&src->rsc),
      src->rsc.ctrl_blk);
}

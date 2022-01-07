
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl_blk; struct hw* hw; } ;
struct src {TYPE_1__ rsc; } ;
struct hw {int (* src_set_cisz ) (int ,unsigned int) ;} ;


 int stub1 (int ,unsigned int) ;

__attribute__((used)) static int src_set_cisz(struct src *src, unsigned int cisz)
{
 struct hw *hw;

 hw = src->rsc.hw;
 hw->src_set_cisz(src->rsc.ctrl_blk, cisz);

 return 0;
}

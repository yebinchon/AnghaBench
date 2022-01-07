
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hw {int (* amixer_commit_write ) (struct hw*,unsigned int,int ) ;} ;
struct TYPE_4__ {int ctrl_blk; TYPE_1__* ops; struct hw* hw; } ;
struct amixer {TYPE_2__ rsc; } ;
struct TYPE_3__ {unsigned int (* output_slot ) (TYPE_2__*) ;} ;


 unsigned int stub1 (TYPE_2__*) ;
 int stub2 (struct hw*,unsigned int,int ) ;

__attribute__((used)) static int amixer_commit_raw_write(struct amixer *amixer)
{
 struct hw *hw;
 unsigned int index;

 hw = amixer->rsc.hw;
 index = amixer->rsc.ops->output_slot(&amixer->rsc);
 hw->amixer_commit_write(hw, index, amixer->rsc.ctrl_blk);

 return 0;
}

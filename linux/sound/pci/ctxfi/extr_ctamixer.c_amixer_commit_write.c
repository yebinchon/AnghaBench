
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {TYPE_3__* ops; } ;
struct sum {TYPE_4__ rsc; } ;
struct rsc {TYPE_2__* ops; } ;
struct hw {int (* amixer_commit_write ) (struct hw*,unsigned int,int ) ;int (* amixer_set_sadr ) (int ,int ) ;int (* amixer_set_x ) (int ,int ) ;int (* amixer_set_dirty_all ) (int ) ;} ;
struct TYPE_16__ {int msr; TYPE_1__* ops; int ctrl_blk; struct hw* hw; } ;
struct amixer {TYPE_7__ rsc; struct sum* sum; struct rsc* input; } ;
struct TYPE_14__ {int (* master ) (TYPE_4__*) ;int (* next_conj ) (TYPE_4__*) ;int (* index ) (TYPE_4__*) ;} ;
struct TYPE_13__ {int (* master ) (struct rsc*) ;int (* next_conj ) (struct rsc*) ;int (* output_slot ) (struct rsc*) ;} ;
struct TYPE_12__ {unsigned int (* output_slot ) (TYPE_7__*) ;int (* master ) (TYPE_7__*) ;int (* next_conj ) (TYPE_7__*) ;} ;


 int stub1 (TYPE_7__*) ;
 int stub10 (TYPE_4__*) ;
 unsigned int stub11 (TYPE_7__*) ;
 int stub12 (struct hw*,unsigned int,int ) ;
 int stub13 (TYPE_7__*) ;
 int stub14 (TYPE_7__*) ;
 int stub15 (struct rsc*) ;
 int stub16 (TYPE_4__*) ;
 int stub2 (struct rsc*) ;
 int stub3 (TYPE_4__*) ;
 int stub4 (int ) ;
 int stub5 (int ,int ) ;
 int stub6 (struct rsc*) ;
 int stub7 (struct rsc*) ;
 int stub8 (int ,int ) ;
 int stub9 (TYPE_4__*) ;

__attribute__((used)) static int amixer_commit_write(struct amixer *amixer)
{
 struct hw *hw;
 unsigned int index;
 int i;
 struct rsc *input;
 struct sum *sum;

 hw = amixer->rsc.hw;
 input = amixer->input;
 sum = amixer->sum;


 amixer->rsc.ops->master(&amixer->rsc);
 if (input)
  input->ops->master(input);

 if (sum)
  sum->rsc.ops->master(&sum->rsc);

 for (i = 0; i < amixer->rsc.msr; i++) {
  hw->amixer_set_dirty_all(amixer->rsc.ctrl_blk);
  if (input) {
   hw->amixer_set_x(amixer->rsc.ctrl_blk,
      input->ops->output_slot(input));
   input->ops->next_conj(input);
  }
  if (sum) {
   hw->amixer_set_sadr(amixer->rsc.ctrl_blk,
      sum->rsc.ops->index(&sum->rsc));
   sum->rsc.ops->next_conj(&sum->rsc);
  }
  index = amixer->rsc.ops->output_slot(&amixer->rsc);
  hw->amixer_commit_write(hw, index, amixer->rsc.ctrl_blk);
  amixer->rsc.ops->next_conj(&amixer->rsc);
 }
 amixer->rsc.ops->master(&amixer->rsc);
 if (input)
  input->ops->master(input);

 if (sum)
  sum->rsc.ops->master(&sum->rsc);

 return 0;
}

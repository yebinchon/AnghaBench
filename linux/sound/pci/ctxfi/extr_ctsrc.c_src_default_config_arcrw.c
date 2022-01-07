
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int msr; TYPE_1__* ops; int ctrl_blk; struct hw* hw; } ;
struct src {TYPE_2__ rsc; } ;
struct hw {unsigned int (* src_get_dirty ) (int ) ;int (* src_commit_write ) (struct hw*,int ,int ) ;int (* src_set_dirty ) (int ,unsigned int) ;int (* src_set_clear_zbufs ) (int ,int) ;int (* src_set_pitch ) (int ,int) ;int (* src_set_ca ) (int ,int) ;int (* src_set_la ) (int ,int) ;int (* src_set_sa ) (int ,int) ;int (* src_set_cisz ) (int ,int) ;int (* src_set_ilsz ) (int ,int ) ;int (* src_set_st ) (int ,int ) ;int (* src_set_vo ) (int ,int ) ;int (* src_set_rom ) (int ,int ) ;int (* src_set_pm ) (int ,int ) ;int (* src_set_wr ) (int ,int ) ;int (* src_set_sf ) (int ,int ) ;int (* src_set_rsr ) (int ,unsigned int) ;int (* src_set_bm ) (int ,int ) ;int (* src_set_state ) (int ,int ) ;} ;
struct TYPE_6__ {int (* master ) (TYPE_2__*) ;int (* next_conj ) (TYPE_2__*) ;int (* index ) (TYPE_2__*) ;} ;


 int SRC_SF_F32 ;
 int SRC_STATE_OFF ;
 int stub1 (int ,int ) ;
 int stub10 (int ,int ) ;
 int stub11 (int ,int) ;
 int stub12 (int ,int) ;
 int stub13 (int ,int) ;
 int stub14 (int ,int) ;
 int stub15 (int ,int) ;
 int stub16 (int ,int) ;
 unsigned int stub17 (int ) ;
 int stub18 (TYPE_2__*) ;
 int stub19 (int ,unsigned int) ;
 int stub2 (int ,int ) ;
 int stub20 (struct hw*,int ,int ) ;
 int stub21 (TYPE_2__*) ;
 int stub22 (TYPE_2__*) ;
 int stub23 (TYPE_2__*) ;
 int stub3 (int ,unsigned int) ;
 int stub4 (int ,int ) ;
 int stub5 (int ,int ) ;
 int stub6 (int ,int ) ;
 int stub7 (int ,int ) ;
 int stub8 (int ,int ) ;
 int stub9 (int ,int ) ;

__attribute__((used)) static int src_default_config_arcrw(struct src *src)
{
 struct hw *hw = src->rsc.hw;
 unsigned int rsr, msr;
 unsigned int dirty;

 hw->src_set_state(src->rsc.ctrl_blk, SRC_STATE_OFF);
 hw->src_set_bm(src->rsc.ctrl_blk, 0);
 for (rsr = 0, msr = src->rsc.msr; msr > 1; msr >>= 1)
  rsr++;

 hw->src_set_rsr(src->rsc.ctrl_blk, rsr);
 hw->src_set_sf(src->rsc.ctrl_blk, SRC_SF_F32);
 hw->src_set_wr(src->rsc.ctrl_blk, 0);
 hw->src_set_pm(src->rsc.ctrl_blk, 0);
 hw->src_set_rom(src->rsc.ctrl_blk, 0);
 hw->src_set_vo(src->rsc.ctrl_blk, 0);
 hw->src_set_st(src->rsc.ctrl_blk, 0);
 hw->src_set_ilsz(src->rsc.ctrl_blk, 0);
 hw->src_set_cisz(src->rsc.ctrl_blk, 0x80);
 hw->src_set_sa(src->rsc.ctrl_blk, 0x0);

 hw->src_set_la(src->rsc.ctrl_blk, 0x1000);

 hw->src_set_ca(src->rsc.ctrl_blk, 0x80);
 hw->src_set_pitch(src->rsc.ctrl_blk, 0x1000000);
 hw->src_set_clear_zbufs(src->rsc.ctrl_blk, 1);

 dirty = hw->src_get_dirty(src->rsc.ctrl_blk);
 src->rsc.ops->master(&src->rsc);
 for (msr = 0; msr < src->rsc.msr; msr++) {
  hw->src_set_dirty(src->rsc.ctrl_blk, dirty);
  hw->src_commit_write(hw, src->rsc.ops->index(&src->rsc),
       src->rsc.ctrl_blk);
  src->rsc.ops->next_conj(&src->rsc);
 }
 src->rsc.ops->master(&src->rsc);

 return 0;
}

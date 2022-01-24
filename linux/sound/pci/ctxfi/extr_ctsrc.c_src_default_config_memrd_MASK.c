#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned int msr; TYPE_1__* ops; int /*<<< orphan*/  ctrl_blk; struct hw* hw; } ;
struct src {TYPE_2__ rsc; scalar_t__ multi; } ;
struct hw {int /*<<< orphan*/  (* src_commit_write ) (struct hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* src_set_pitch ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* src_set_clear_zbufs ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* src_set_ca ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* src_set_la ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* src_set_sa ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* src_set_cisz ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* src_set_ilsz ) (int /*<<< orphan*/ ,scalar_t__) ;int /*<<< orphan*/  (* src_set_st ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* src_set_vo ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* src_set_rom ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* src_set_pm ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* src_set_wr ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* src_set_sf ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* src_set_rsr ) (int /*<<< orphan*/ ,unsigned int) ;int /*<<< orphan*/  (* src_set_bm ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* src_set_state ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  (* master ) (TYPE_2__*) ;int /*<<< orphan*/  (* index ) (TYPE_2__*) ;int /*<<< orphan*/  (* next_conj ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SRC_SF_S16 ; 
 int /*<<< orphan*/  SRC_STATE_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct src *src)
{
	struct hw *hw = src->rsc.hw;
	unsigned int rsr, msr;

	hw->src_set_state(src->rsc.ctrl_blk, SRC_STATE_OFF);
	hw->src_set_bm(src->rsc.ctrl_blk, 1);
	for (rsr = 0, msr = src->rsc.msr; msr > 1; msr >>= 1)
		rsr++;

	hw->src_set_rsr(src->rsc.ctrl_blk, rsr);
	hw->src_set_sf(src->rsc.ctrl_blk, SRC_SF_S16);
	hw->src_set_wr(src->rsc.ctrl_blk, 0);
	hw->src_set_pm(src->rsc.ctrl_blk, 0);
	hw->src_set_rom(src->rsc.ctrl_blk, 0);
	hw->src_set_vo(src->rsc.ctrl_blk, 0);
	hw->src_set_st(src->rsc.ctrl_blk, 0);
	hw->src_set_ilsz(src->rsc.ctrl_blk, src->multi - 1);
	hw->src_set_cisz(src->rsc.ctrl_blk, 0x80);
	hw->src_set_sa(src->rsc.ctrl_blk, 0x0);
	hw->src_set_la(src->rsc.ctrl_blk, 0x1000);
	hw->src_set_ca(src->rsc.ctrl_blk, 0x80);
	hw->src_set_pitch(src->rsc.ctrl_blk, 0x1000000);
	hw->src_set_clear_zbufs(src->rsc.ctrl_blk, 1);

	src->rsc.ops->master(&src->rsc);
	hw->src_commit_write(hw, src->rsc.ops->index(&src->rsc),
						src->rsc.ctrl_blk);

	for (msr = 1; msr < src->rsc.msr; msr++) {
		src->rsc.ops->next_conj(&src->rsc);
		hw->src_set_pitch(src->rsc.ctrl_blk, 0x1000000);
		hw->src_commit_write(hw, src->rsc.ops->index(&src->rsc),
							src->rsc.ctrl_blk);
	}
	src->rsc.ops->master(&src->rsc);

	return 0;
}
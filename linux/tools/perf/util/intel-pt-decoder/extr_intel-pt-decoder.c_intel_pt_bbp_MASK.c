#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int is_32_bit; scalar_t__* mask; } ;
struct TYPE_6__ {TYPE_2__ items; } ;
struct TYPE_4__ {scalar_t__ payload; int count; } ;
struct intel_pt_decoder {scalar_t__ prev_pkt_ctx; scalar_t__ blk_type; size_t blk_type_pos; TYPE_3__ state; TYPE_1__ packet; } ;

/* Variables and functions */
 scalar_t__ INTEL_PT_GP_REGS ; 
 scalar_t__ INTEL_PT_NO_CTX ; 
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct intel_pt_decoder *decoder)
{
	if (decoder->prev_pkt_ctx == INTEL_PT_NO_CTX) {
		FUNC2(decoder->state.items.mask, 0, sizeof(decoder->state.items.mask));
		decoder->state.items.is_32_bit = false;
	}
	decoder->blk_type = decoder->packet.payload;
	decoder->blk_type_pos = FUNC0(decoder->blk_type);
	if (decoder->blk_type == INTEL_PT_GP_REGS)
		decoder->state.items.is_32_bit = decoder->packet.count;
	if (decoder->blk_type_pos < 0) {
		FUNC1("WARNING: Unknown block type %u\n",
			     decoder->blk_type);
	} else if (decoder->state.items.mask[decoder->blk_type_pos]) {
		FUNC1("WARNING: Duplicate block type %u\n",
			     decoder->blk_type);
	}
}
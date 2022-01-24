#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct lm_lockstruct {int ls_recover_size; int* ls_recover_submit; int* ls_recover_result; int /*<<< orphan*/  ls_recover_spin; scalar_t__ ls_lvb_bits; } ;
struct gfs2_sbd {struct lm_lockstruct sd_lockstruct; } ;
struct dlm_slot {int slot; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GDLM_LVB_SIZE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ RECOVER_SIZE_INC ; 
 int* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct gfs2_sbd *sdp, struct dlm_slot *slots,
			    int num_slots)
{
	struct lm_lockstruct *ls = &sdp->sd_lockstruct;
	uint32_t *submit = NULL;
	uint32_t *result = NULL;
	uint32_t old_size, new_size;
	int i, max_jid;

	if (!ls->ls_lvb_bits) {
		ls->ls_lvb_bits = FUNC2(GDLM_LVB_SIZE, GFP_NOFS);
		if (!ls->ls_lvb_bits)
			return -ENOMEM;
	}

	max_jid = 0;
	for (i = 0; i < num_slots; i++) {
		if (max_jid < slots[i].slot - 1)
			max_jid = slots[i].slot - 1;
	}

	old_size = ls->ls_recover_size;
	new_size = old_size;
	while (new_size < max_jid + 1)
		new_size += RECOVER_SIZE_INC;
	if (new_size == old_size)
		return 0;

	submit = FUNC0(new_size, sizeof(uint32_t), GFP_NOFS);
	result = FUNC0(new_size, sizeof(uint32_t), GFP_NOFS);
	if (!submit || !result) {
		FUNC1(submit);
		FUNC1(result);
		return -ENOMEM;
	}

	FUNC4(&ls->ls_recover_spin);
	FUNC3(submit, ls->ls_recover_submit, old_size * sizeof(uint32_t));
	FUNC3(result, ls->ls_recover_result, old_size * sizeof(uint32_t));
	FUNC1(ls->ls_recover_submit);
	FUNC1(ls->ls_recover_result);
	ls->ls_recover_submit = submit;
	ls->ls_recover_result = result;
	ls->ls_recover_size = new_size;
	FUNC5(&ls->ls_recover_spin);
	return 0;
}
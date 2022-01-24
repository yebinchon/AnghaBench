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
struct hw {int /*<<< orphan*/  card; } ;
struct amixer_mgr {int /*<<< orphan*/  card; int /*<<< orphan*/  put_amixer; int /*<<< orphan*/  get_amixer; int /*<<< orphan*/  mgr_lock; int /*<<< orphan*/  mgr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMIXER ; 
 int /*<<< orphan*/  AMIXER_RESOURCE_NUM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  get_amixer_rsc ; 
 int /*<<< orphan*/  FUNC0 (struct amixer_mgr*) ; 
 struct amixer_mgr* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  put_amixer_rsc ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct hw *hw, struct amixer_mgr **ramixer_mgr)
{
	int err;
	struct amixer_mgr *amixer_mgr;

	*ramixer_mgr = NULL;
	amixer_mgr = FUNC1(sizeof(*amixer_mgr), GFP_KERNEL);
	if (!amixer_mgr)
		return -ENOMEM;

	err = FUNC2(&amixer_mgr->mgr, AMIXER, AMIXER_RESOURCE_NUM, hw);
	if (err)
		goto error;

	FUNC3(&amixer_mgr->mgr_lock);

	amixer_mgr->get_amixer = get_amixer_rsc;
	amixer_mgr->put_amixer = put_amixer_rsc;
	amixer_mgr->card = hw->card;

	*ramixer_mgr = amixer_mgr;

	return 0;

error:
	FUNC0(amixer_mgr);
	return err;
}
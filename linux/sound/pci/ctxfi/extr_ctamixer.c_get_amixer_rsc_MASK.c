#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct amixer_mgr {int /*<<< orphan*/  mgr_lock; int /*<<< orphan*/  mgr; TYPE_1__* card; } ;
struct amixer_desc {int msr; } ;
struct amixer {unsigned int* idx; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct amixer*,struct amixer_desc const*,struct amixer_mgr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct amixer*) ; 
 struct amixer* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct amixer_mgr *mgr,
			  const struct amixer_desc *desc,
			  struct amixer **ramixer)
{
	int err, i;
	unsigned int idx;
	struct amixer *amixer;
	unsigned long flags;

	*ramixer = NULL;

	/* Allocate mem for amixer resource */
	amixer = FUNC3(sizeof(*amixer), GFP_KERNEL);
	if (!amixer)
		return -ENOMEM;

	/* Check whether there are sufficient
	 * amixer resources to meet request. */
	err = 0;
	FUNC6(&mgr->mgr_lock, flags);
	for (i = 0; i < desc->msr; i++) {
		err = FUNC4(&mgr->mgr, 1, &idx);
		if (err)
			break;

		amixer->idx[i] = idx;
	}
	FUNC7(&mgr->mgr_lock, flags);
	if (err) {
		FUNC1(mgr->card->dev,
			"Can't meet AMIXER resource request!\n");
		goto error;
	}

	err = FUNC0(amixer, desc, mgr);
	if (err)
		goto error;

	*ramixer = amixer;

	return 0;

error:
	FUNC6(&mgr->mgr_lock, flags);
	for (i--; i >= 0; i--)
		FUNC5(&mgr->mgr, 1, amixer->idx[i]);

	FUNC7(&mgr->mgr_lock, flags);
	FUNC2(amixer);
	return err;
}
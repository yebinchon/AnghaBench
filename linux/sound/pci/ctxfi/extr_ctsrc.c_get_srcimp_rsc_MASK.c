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
struct srcimp_mgr {int /*<<< orphan*/  mgr_lock; int /*<<< orphan*/  mgr; TYPE_1__* card; } ;
struct srcimp_desc {int msr; } ;
struct srcimp {unsigned int* idx; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct srcimp*) ; 
 struct srcimp* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (struct srcimp*,struct srcimp_desc const*,struct srcimp_mgr*) ; 

__attribute__((used)) static int FUNC8(struct srcimp_mgr *mgr,
			  const struct srcimp_desc *desc,
			  struct srcimp **rsrcimp)
{
	int err, i;
	unsigned int idx;
	struct srcimp *srcimp;
	unsigned long flags;

	*rsrcimp = NULL;

	/* Allocate mem for SRCIMP resource */
	srcimp = FUNC2(sizeof(*srcimp), GFP_KERNEL);
	if (!srcimp)
		return -ENOMEM;

	/* Check whether there are sufficient SRCIMP resources. */
	err = 0;
	FUNC5(&mgr->mgr_lock, flags);
	for (i = 0; i < desc->msr; i++) {
		err = FUNC3(&mgr->mgr, 1, &idx);
		if (err)
			break;

		srcimp->idx[i] = idx;
	}
	FUNC6(&mgr->mgr_lock, flags);
	if (err) {
		FUNC0(mgr->card->dev,
			"Can't meet SRCIMP resource request!\n");
		goto error1;
	}

	err = FUNC7(srcimp, desc, mgr);
	if (err)
		goto error1;

	*rsrcimp = srcimp;

	return 0;

error1:
	FUNC5(&mgr->mgr_lock, flags);
	for (i--; i >= 0; i--)
		FUNC4(&mgr->mgr, 1, srcimp->idx[i]);

	FUNC6(&mgr->mgr_lock, flags);
	FUNC1(srcimp);
	return err;
}
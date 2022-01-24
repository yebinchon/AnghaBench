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
struct src_mgr {int /*<<< orphan*/  mgr_lock; int /*<<< orphan*/  mgr; TYPE_1__* card; } ;
struct src_desc {scalar_t__ mode; int multi; } ;
struct src {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MEMRD ; 
 unsigned int SRC_RESOURCE_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct src* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct src*) ; 
 struct src* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (struct src*,unsigned int,struct src_desc const*,struct src_mgr*) ; 

__attribute__((used)) static int
FUNC9(struct src_mgr *mgr, const struct src_desc *desc, struct src **rsrc)
{
	unsigned int idx = SRC_RESOURCE_NUM;
	int err;
	struct src *src;
	unsigned long flags;

	*rsrc = NULL;

	/* Check whether there are sufficient src resources to meet request. */
	FUNC6(&mgr->mgr_lock, flags);
	if (MEMRD == desc->mode)
		err = FUNC4(&mgr->mgr, desc->multi, &idx);
	else
		err = FUNC4(&mgr->mgr, 1, &idx);

	FUNC7(&mgr->mgr_lock, flags);
	if (err) {
		FUNC0(mgr->card->dev,
			"Can't meet SRC resource request!\n");
		return err;
	}

	/* Allocate mem for master src resource */
	if (MEMRD == desc->mode)
		src = FUNC1(desc->multi, sizeof(*src), GFP_KERNEL);
	else
		src = FUNC3(sizeof(*src), GFP_KERNEL);

	if (!src) {
		err = -ENOMEM;
		goto error1;
	}

	err = FUNC8(src, idx, desc, mgr);
	if (err)
		goto error2;

	*rsrc = src;

	return 0;

error2:
	FUNC2(src);
error1:
	FUNC6(&mgr->mgr_lock, flags);
	if (MEMRD == desc->mode)
		FUNC5(&mgr->mgr, desc->multi, idx);
	else
		FUNC5(&mgr->mgr, 1, idx);

	FUNC7(&mgr->mgr_lock, flags);
	return err;
}
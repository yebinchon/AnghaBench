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
struct daio {int dummy; } ;
struct dao {struct daio daio; } ;
struct daio_mgr {int /*<<< orphan*/  mgr_lock; int /*<<< orphan*/  mgr; int /*<<< orphan*/  (* commit_write ) (struct daio_mgr*) ;int /*<<< orphan*/  (* daio_enable ) (struct daio_mgr*,struct daio*) ;TYPE_1__* card; } ;
struct daio_desc {scalar_t__ type; } ;
struct dai {struct daio daio; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DAIO_OUT_MAX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct dao*,struct daio_desc const*,struct daio_mgr*) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (struct dao*,struct daio_desc const*,struct daio_mgr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct dao*) ; 
 struct dao* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct daio_mgr*,struct daio*) ; 
 int /*<<< orphan*/  FUNC10 (struct daio_mgr*) ; 

__attribute__((used)) static int FUNC11(struct daio_mgr *mgr,
			const struct daio_desc *desc,
			struct daio **rdaio)
{
	int err;
	unsigned long flags;

	*rdaio = NULL;

	/* Check whether there are sufficient daio resources to meet request. */
	FUNC7(&mgr->mgr_lock, flags);
	err = FUNC1(&mgr->mgr, desc->type);
	FUNC8(&mgr->mgr_lock, flags);
	if (err) {
		FUNC4(mgr->card->dev,
			"Can't meet DAIO resource request!\n");
		return err;
	}

	err = -ENOMEM;
	/* Allocate mem for daio resource */
	if (desc->type <= DAIO_OUT_MAX) {
		struct dao *dao = FUNC6(sizeof(*dao), GFP_KERNEL);
		if (!dao)
			goto error;

		err = FUNC3(dao, desc, mgr);
		if (err) {
			FUNC5(dao);
			goto error;
		}

		*rdaio = &dao->daio;
	} else {
		struct dai *dai = FUNC6(sizeof(*dai), GFP_KERNEL);
		if (!dai)
			goto error;

		err = FUNC0(dai, desc, mgr);
		if (err) {
			FUNC5(dai);
			goto error;
		}

		*rdaio = &dai->daio;
	}

	mgr->daio_enable(mgr, *rdaio);
	mgr->commit_write(mgr);

	return 0;

error:
	FUNC7(&mgr->mgr_lock, flags);
	FUNC2(&mgr->mgr, desc->type);
	FUNC8(&mgr->mgr_lock, flags);
	return err;
}
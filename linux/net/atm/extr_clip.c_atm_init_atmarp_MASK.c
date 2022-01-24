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
struct atm_vcc {int /*<<< orphan*/ * push_oam; int /*<<< orphan*/ * pop; int /*<<< orphan*/ * push; int /*<<< orphan*/ * dev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_VF_META ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int CLIP_CHECK_INTERVAL ; 
 int EADDRINUSE ; 
 int HZ ; 
 struct atm_vcc* atmarpd ; 
 int /*<<< orphan*/  atmarpd_dev ; 
 int /*<<< orphan*/  idle_timer ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct atm_vcc *vcc)
{
	FUNC1();
	if (atmarpd) {
		FUNC2();
		return -EADDRINUSE;
	}

	FUNC0(&idle_timer, jiffies + CLIP_CHECK_INTERVAL * HZ);

	atmarpd = vcc;
	FUNC3(ATM_VF_META, &vcc->flags);
	FUNC3(ATM_VF_READY, &vcc->flags);
	    /* allow replies and avoid getting closed if signaling dies */
	vcc->dev = &atmarpd_dev;
	FUNC5(FUNC4(vcc));
	vcc->push = NULL;
	vcc->pop = NULL; /* crash */
	vcc->push_oam = NULL; /* crash */
	FUNC2();
	return 0;
}
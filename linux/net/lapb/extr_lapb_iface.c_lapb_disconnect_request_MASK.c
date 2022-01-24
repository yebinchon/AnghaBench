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
struct net_device {int dummy; } ;
struct lapb_cb {int state; int /*<<< orphan*/  dev; scalar_t__ n2count; } ;

/* Variables and functions */
 int LAPB_BADTOKEN ; 
 int /*<<< orphan*/  LAPB_COMMAND ; 
 int /*<<< orphan*/  LAPB_DISC ; 
 int LAPB_NOTCONNECTED ; 
 int LAPB_OK ; 
 int /*<<< orphan*/  LAPB_POLLON ; 
#define  LAPB_STATE_0 130 
#define  LAPB_STATE_1 129 
#define  LAPB_STATE_2 128 
 int /*<<< orphan*/  FUNC0 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 struct lapb_cb* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC4 (struct lapb_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lapb_cb*) ; 
 int /*<<< orphan*/  FUNC6 (struct lapb_cb*) ; 

int FUNC7(struct net_device *dev)
{
	struct lapb_cb *lapb = FUNC2(dev);
	int rc = LAPB_BADTOKEN;

	if (!lapb)
		goto out;

	switch (lapb->state) {
	case LAPB_STATE_0:
		rc = LAPB_NOTCONNECTED;
		goto out_put;

	case LAPB_STATE_1:
		FUNC1(1, "(%p) S1 TX DISC(1)\n", lapb->dev);
		FUNC1(0, "(%p) S1 -> S0\n", lapb->dev);
		FUNC4(lapb, LAPB_DISC, LAPB_POLLON, LAPB_COMMAND);
		lapb->state = LAPB_STATE_0;
		FUNC5(lapb);
		rc = LAPB_NOTCONNECTED;
		goto out_put;

	case LAPB_STATE_2:
		rc = LAPB_OK;
		goto out_put;
	}

	FUNC0(lapb);
	lapb->n2count = 0;
	FUNC4(lapb, LAPB_DISC, LAPB_POLLON, LAPB_COMMAND);
	FUNC5(lapb);
	FUNC6(lapb);
	lapb->state = LAPB_STATE_2;

	FUNC1(1, "(%p) S3 DISC(1)\n", lapb->dev);
	FUNC1(0, "(%p) S3 -> S2\n", lapb->dev);

	rc = LAPB_OK;
out_put:
	FUNC3(lapb);
out:
	return rc;
}
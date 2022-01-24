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
struct q6copp {int copp_idx; int afe_port; int /*<<< orphan*/  wait; struct q6adm* adm; } ;
struct q6adm {int /*<<< orphan*/ * copp_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct q6copp* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MAX_COPPS_PER_PORT ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct q6copp* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct q6copp *FUNC5(struct q6adm *adm, int port_idx)
{
	struct q6copp *c;
	int idx;

	idx = FUNC1(&adm->copp_bitmap[port_idx],
				  MAX_COPPS_PER_PORT);

	if (idx > MAX_COPPS_PER_PORT)
		return FUNC0(-EBUSY);

	c = FUNC3(sizeof(*c), GFP_ATOMIC);
	if (!c)
		return FUNC0(-ENOMEM);

	FUNC4(idx, &adm->copp_bitmap[port_idx]);
	c->copp_idx = idx;
	c->afe_port = port_idx;
	c->adm = adm;

	FUNC2(&c->wait);

	return c;
}
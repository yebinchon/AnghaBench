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
struct fprop_global {int /*<<< orphan*/  sequence; int /*<<< orphan*/  events; scalar_t__ period; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct fprop_global *p, gfp_t gfp)
{
	int err;

	p->period = 0;
	/* Use 1 to avoid dealing with periods with 0 events... */
	err = FUNC0(&p->events, 1, gfp);
	if (err)
		return err;
	FUNC1(&p->sequence);
	return 0;
}
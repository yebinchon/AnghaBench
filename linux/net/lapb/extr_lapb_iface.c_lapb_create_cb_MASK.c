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
struct lapb_cb {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  state; int /*<<< orphan*/  window; int /*<<< orphan*/  mode; int /*<<< orphan*/  n2; int /*<<< orphan*/  t2; int /*<<< orphan*/  t1; int /*<<< orphan*/  t2timer; int /*<<< orphan*/  t1timer; int /*<<< orphan*/  ack_queue; int /*<<< orphan*/  write_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  LAPB_DEFAULT_MODE ; 
 int /*<<< orphan*/  LAPB_DEFAULT_N2 ; 
 int /*<<< orphan*/  LAPB_DEFAULT_T1 ; 
 int /*<<< orphan*/  LAPB_DEFAULT_T2 ; 
 int /*<<< orphan*/  LAPB_DEFAULT_WINDOW ; 
 int /*<<< orphan*/  LAPB_STATE_0 ; 
 struct lapb_cb* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct lapb_cb *FUNC4(void)
{
	struct lapb_cb *lapb = FUNC0(sizeof(*lapb), GFP_ATOMIC);

	if (!lapb)
		goto out;

	FUNC2(&lapb->write_queue);
	FUNC2(&lapb->ack_queue);

	FUNC3(&lapb->t1timer, NULL, 0);
	FUNC3(&lapb->t2timer, NULL, 0);

	lapb->t1      = LAPB_DEFAULT_T1;
	lapb->t2      = LAPB_DEFAULT_T2;
	lapb->n2      = LAPB_DEFAULT_N2;
	lapb->mode    = LAPB_DEFAULT_MODE;
	lapb->window  = LAPB_DEFAULT_WINDOW;
	lapb->state   = LAPB_STATE_0;
	FUNC1(&lapb->refcnt, 1);
out:
	return lapb;
}
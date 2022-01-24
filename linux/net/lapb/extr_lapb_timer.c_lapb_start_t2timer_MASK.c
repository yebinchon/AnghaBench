#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct lapb_cb {TYPE_1__ t2timer; scalar_t__ t2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  lapb_t2timer_expiry ; 

void FUNC2(struct lapb_cb *lapb)
{
	FUNC1(&lapb->t2timer);

	lapb->t2timer.function = lapb_t2timer_expiry;
	lapb->t2timer.expires  = jiffies + lapb->t2;

	FUNC0(&lapb->t2timer);
}
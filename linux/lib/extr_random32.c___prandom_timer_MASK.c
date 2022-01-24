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
typedef  int /*<<< orphan*/  u32 ;
struct timer_list {int dummy; } ;
typedef  int /*<<< orphan*/  entropy ;
struct TYPE_3__ {int /*<<< orphan*/  expires; } ;

/* Variables and functions */
 unsigned long MSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 TYPE_1__ seed_timer ; 

__attribute__((used)) static void FUNC5(struct timer_list *unused)
{
	u32 entropy;
	unsigned long expires;

	FUNC1(&entropy, sizeof(entropy));
	FUNC3(entropy);

	/* reseed every ~60 seconds, in [40 .. 80) interval with slack */
	expires = 40 + FUNC4(40);
	seed_timer.expires = jiffies + FUNC2(expires * MSEC_PER_SEC);

	FUNC0(&seed_timer);
}
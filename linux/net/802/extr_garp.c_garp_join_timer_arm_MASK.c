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
typedef  int u64 ;
struct garp_applicant {int /*<<< orphan*/  join_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  garp_join_time ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct garp_applicant *app)
{
	unsigned long delay;

	delay = (u64)FUNC1(garp_join_time) * FUNC2() >> 32;
	FUNC0(&app->join_timer, jiffies + delay);
}
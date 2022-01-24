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
struct timer_list {int dummy; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ pstore_new_entry ; 
 int /*<<< orphan*/  pstore_timer ; 
 scalar_t__ pstore_update_ms ; 
 int /*<<< orphan*/  pstore_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct timer_list *unused)
{
	if (pstore_new_entry) {
		pstore_new_entry = 0;
		FUNC2(&pstore_work);
	}

	if (pstore_update_ms >= 0)
		FUNC0(&pstore_timer,
			  jiffies + FUNC1(pstore_update_ms));
}
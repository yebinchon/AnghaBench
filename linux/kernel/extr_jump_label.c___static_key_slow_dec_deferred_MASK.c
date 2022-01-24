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
struct static_key {int dummy; } ;
struct delayed_work {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct static_key*) ; 
 int /*<<< orphan*/  FUNC1 (struct delayed_work*,unsigned long) ; 
 scalar_t__ FUNC2 (struct static_key*) ; 

void FUNC3(struct static_key *key,
				    struct delayed_work *work,
				    unsigned long timeout)
{
	FUNC0(key);

	if (FUNC2(key))
		return;

	FUNC1(work, timeout);
}
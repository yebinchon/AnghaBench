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
struct callchain_param {scalar_t__ mode; } ;

/* Variables and functions */
 scalar_t__ CHAIN_NONE ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct callchain_param*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct callchain_param *callchain)
{
	if (callchain->mode != CHAIN_NONE) {
		if (FUNC0(callchain) < 0) {
			FUNC1("Can't register callchain params.\n");
			return -EINVAL;
		}
	}

	return 0;
}
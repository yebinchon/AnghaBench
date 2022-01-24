#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ucounts {int /*<<< orphan*/ * ucount; TYPE_1__* ns; } ;
typedef  enum ucount_type { ____Placeholder_ucount_type } ucount_type ;
struct TYPE_2__ {struct ucounts* ucounts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ucounts*) ; 

void FUNC3(struct ucounts *ucounts, enum ucount_type type)
{
	struct ucounts *iter;
	for (iter = ucounts; iter; iter = iter->ns->ucounts) {
		int dec = FUNC1(&iter->ucount[type]);
		FUNC0(dec < 0);
	}
	FUNC2(ucounts);
}
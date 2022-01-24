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
struct aa_loaddata {TYPE_1__* ns; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_loaddata*) ; 

void FUNC5(struct aa_loaddata *rawdata)
{
	FUNC0(rawdata->ns && !FUNC3(&rawdata->ns->lock));

	if (rawdata->ns) {
		FUNC4(rawdata);
		FUNC2(&rawdata->list);
		FUNC1(rawdata->ns);
		rawdata->ns = NULL;
	}
}
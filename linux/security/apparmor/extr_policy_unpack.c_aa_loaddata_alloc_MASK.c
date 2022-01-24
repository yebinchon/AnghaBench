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
struct aa_loaddata {int /*<<< orphan*/  list; int /*<<< orphan*/  count; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct aa_loaddata* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_loaddata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 struct aa_loaddata* FUNC5 (int,int /*<<< orphan*/ ) ; 

struct aa_loaddata *FUNC6(size_t size)
{
	struct aa_loaddata *d;

	d = FUNC5(sizeof(*d), GFP_KERNEL);
	if (d == NULL)
		return FUNC0(-ENOMEM);
	d->data = FUNC4(size, GFP_KERNEL);
	if (!d->data) {
		FUNC2(d);
		return FUNC0(-ENOMEM);
	}
	FUNC3(&d->count);
	FUNC1(&d->list);

	return d;
}
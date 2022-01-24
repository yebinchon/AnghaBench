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
struct dsa_switch {int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  dsa2_mutex ; 
 int FUNC0 (struct dsa_switch*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct dsa_switch *ds)
{
	int err;

	FUNC2(&dsa2_mutex);
	err = FUNC0(ds);
	FUNC1(ds->dst);
	FUNC3(&dsa2_mutex);

	return err;
}
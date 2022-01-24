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
struct the_nilfs {int /*<<< orphan*/  ns_dev_subgroups; int /*<<< orphan*/  ns_dev_kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC3 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC4 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC5 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC6 (struct the_nilfs*) ; 

void FUNC7(struct the_nilfs *nilfs)
{
	FUNC3(nilfs);
	FUNC2(nilfs);
	FUNC5(nilfs);
	FUNC6(nilfs);
	FUNC4(nilfs);
	FUNC1(&nilfs->ns_dev_kobj);
	FUNC0(nilfs->ns_dev_subgroups);
}
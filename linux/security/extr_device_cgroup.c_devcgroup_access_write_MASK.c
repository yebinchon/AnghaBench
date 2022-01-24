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
struct kernfs_open_file {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devcgroup_mutex ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (struct kernfs_open_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct kernfs_open_file*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static ssize_t FUNC7(struct kernfs_open_file *of,
				      char *buf, size_t nbytes, loff_t off)
{
	int retval;

	FUNC2(&devcgroup_mutex);
	retval = FUNC1(FUNC0(FUNC5(of)),
					 FUNC4(of)->private, FUNC6(buf));
	FUNC3(&devcgroup_mutex);
	return retval ?: nbytes;
}
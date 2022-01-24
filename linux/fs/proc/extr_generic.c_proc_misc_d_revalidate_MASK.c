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
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  in_use; } ;

/* Variables and functions */
 int ECHILD ; 
 unsigned int LOOKUP_RCU ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 

__attribute__((used)) static int FUNC3(struct dentry *dentry, unsigned int flags)
{
	if (flags & LOOKUP_RCU)
		return -ECHILD;

	if (FUNC1(&FUNC0(FUNC2(dentry))->in_use) < 0)
		return 0; /* revalidate */
	return 1;
}
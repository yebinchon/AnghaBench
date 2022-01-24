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
struct TYPE_2__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct dentry *dentry, int flags)
{
	/* Copy up of disconnected dentry does not set upper alias */
	if (FUNC1(dentry, flags))
		return false;

	if (FUNC3(FUNC0(dentry)->i_mode))
		return false;

	if (!FUNC2(flags))
		return false;

	return true;
}
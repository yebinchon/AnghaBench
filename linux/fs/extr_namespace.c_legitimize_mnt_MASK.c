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
struct vfsmount {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct vfsmount*,unsigned int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 

bool FUNC6(struct vfsmount *bastard, unsigned seq)
{
	int res = FUNC0(bastard, seq);
	if (FUNC1(!res))
		return true;
	if (FUNC5(res < 0)) {
		FUNC4();
		FUNC2(bastard);
		FUNC3();
	}
	return false;
}
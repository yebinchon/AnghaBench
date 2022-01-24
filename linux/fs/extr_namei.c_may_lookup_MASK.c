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
struct nameidata {int flags; int /*<<< orphan*/  inode; } ;

/* Variables and functions */
 int ECHILD ; 
 int LOOKUP_RCU ; 
 int MAY_EXEC ; 
 int MAY_NOT_BLOCK ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct nameidata*) ; 

__attribute__((used)) static inline int FUNC2(struct nameidata *nd)
{
	if (nd->flags & LOOKUP_RCU) {
		int err = FUNC0(nd->inode, MAY_EXEC|MAY_NOT_BLOCK);
		if (err != -ECHILD)
			return err;
		if (FUNC1(nd))
			return -ECHILD;
	}
	return FUNC0(nd->inode, MAY_EXEC);
}
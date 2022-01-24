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
struct TYPE_2__ {int /*<<< orphan*/  mnt; } ;
struct nameidata {int flags; TYPE_1__ root; } ;

/* Variables and functions */
 int LAST_DOTDOT ; 
 int LOOKUP_RCU ; 
 int FUNC0 (struct nameidata*) ; 
 int FUNC1 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC2 (struct nameidata*) ; 

__attribute__((used)) static inline int FUNC3(struct nameidata *nd, int type)
{
	if (type == LAST_DOTDOT) {
		if (!nd->root.mnt)
			FUNC2(nd);
		if (nd->flags & LOOKUP_RCU) {
			return FUNC1(nd);
		} else
			return FUNC0(nd);
	}
	return 0;
}
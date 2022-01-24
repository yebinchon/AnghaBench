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
struct nameidata {int flags; int depth; int /*<<< orphan*/  root; TYPE_1__* stack; int /*<<< orphan*/  path; } ;
struct TYPE_2__ {int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int LOOKUP_RCU ; 
 int LOOKUP_ROOT_GRABBED ; 
 int /*<<< orphan*/  FUNC0 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct nameidata *nd)
{
	FUNC0(nd);
	if (!(nd->flags & LOOKUP_RCU)) {
		int i;
		FUNC1(&nd->path);
		for (i = 0; i < nd->depth; i++)
			FUNC1(&nd->stack[i].link);
		if (nd->flags & LOOKUP_ROOT_GRABBED) {
			FUNC1(&nd->root);
			nd->flags &= ~LOOKUP_ROOT_GRABBED;
		}
	} else {
		nd->flags &= ~LOOKUP_RCU;
		FUNC2();
	}
	nd->depth = 0;
}
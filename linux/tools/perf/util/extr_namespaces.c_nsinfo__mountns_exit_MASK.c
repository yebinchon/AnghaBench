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
struct nscookie {int oldns; int newns; scalar_t__ oldcwd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLONE_NEWNS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 

void FUNC5(struct nscookie *nc)
{
	if (nc == NULL || nc->oldns == -1 || nc->newns == -1 || !nc->oldcwd)
		return;

	FUNC3(nc->oldns, CLONE_NEWNS);

	if (nc->oldcwd) {
		FUNC0(FUNC1(nc->oldcwd));
		FUNC4(&nc->oldcwd);
	}

	if (nc->oldns > -1) {
		FUNC2(nc->oldns);
		nc->oldns = -1;
	}

	if (nc->newns > -1) {
		FUNC2(nc->newns);
		nc->newns = -1;
	}
}
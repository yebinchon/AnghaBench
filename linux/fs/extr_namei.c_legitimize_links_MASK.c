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
struct saved {int /*<<< orphan*/  seq; int /*<<< orphan*/  link; } ;
struct nameidata {int depth; struct saved* stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nameidata*) ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static bool FUNC3(struct nameidata *nd)
{
	int i;
	for (i = 0; i < nd->depth; i++) {
		struct saved *last = nd->stack + i;
		if (FUNC2(!FUNC1(nd, &last->link, last->seq))) {
			FUNC0(nd);
			nd->depth = i + 1;
			return false;
		}
	}
	return true;
}
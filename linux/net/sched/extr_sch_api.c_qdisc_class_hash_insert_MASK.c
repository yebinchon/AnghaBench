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
struct Qdisc_class_hash {int /*<<< orphan*/  hashelems; int /*<<< orphan*/ * hash; int /*<<< orphan*/  hashmask; } ;
struct Qdisc_class_common {int /*<<< orphan*/  hnode; int /*<<< orphan*/  classid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct Qdisc_class_hash *clhash,
			     struct Qdisc_class_common *cl)
{
	unsigned int h;

	FUNC0(&cl->hnode);
	h = FUNC2(cl->classid, clhash->hashmask);
	FUNC1(&cl->hnode, &clhash->hash[h]);
	clhash->hashelems++;
}
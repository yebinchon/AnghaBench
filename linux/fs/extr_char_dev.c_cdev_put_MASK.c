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
struct module {int dummy; } ;
struct cdev {int /*<<< orphan*/  kobj; struct module* owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct module*) ; 

void FUNC2(struct cdev *p)
{
	if (p) {
		struct module *owner = p->owner;
		FUNC0(&p->kobj);
		FUNC1(owner);
	}
}
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
struct cdev {int /*<<< orphan*/  kobj; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ktype_cdev_dynamic ; 
 struct cdev* FUNC2 (int,int /*<<< orphan*/ ) ; 

struct cdev *FUNC3(void)
{
	struct cdev *p = FUNC2(sizeof(struct cdev), GFP_KERNEL);
	if (p) {
		FUNC0(&p->list);
		FUNC1(&p->kobj, &ktype_cdev_dynamic);
	}
	return p;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  dep_map; } ;
struct TYPE_11__ {TYPE_1__* ctx; TYPE_6__ base; } ;
struct TYPE_10__ {int /*<<< orphan*/  stamp; } ;

/* Variables and functions */
 int EDEADLK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  _THIS_IP_ ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_3__ o ; 
 TYPE_3__ o2 ; 
 TYPE_3__ o3 ; 
 TYPE_1__ t ; 
 TYPE_1__ t2 ; 

__attribute__((used)) static void FUNC5(void)
{
	int ret;

	FUNC3(&o2.base);
	FUNC4(&o2.base.dep_map, 1, _THIS_IP_);
	o2.ctx = &t2;

	FUNC1(&t);
	t2 = t;
	t2.stamp--;

	ret = FUNC2(&o, &t);
	FUNC0(ret);

	ret = FUNC2(&o2, &t);
	FUNC0(ret != -EDEADLK);

	ret = FUNC2(&o3, &t);
}
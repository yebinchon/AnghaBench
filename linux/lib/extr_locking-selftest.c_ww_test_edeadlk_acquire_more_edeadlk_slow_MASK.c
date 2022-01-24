#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  dep_map; } ;
struct TYPE_14__ {TYPE_2__* ctx; TYPE_8__ base; } ;
struct TYPE_13__ {int /*<<< orphan*/  stamp; } ;
struct TYPE_12__ {TYPE_2__* ctx; TYPE_8__ base; } ;

/* Variables and functions */
 int EDEADLK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_6__*,TYPE_2__*) ; 
 int /*<<< orphan*/  _THIS_IP_ ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_6__ o ; 
 TYPE_6__ o2 ; 
 TYPE_1__ o3 ; 
 TYPE_2__ t ; 
 TYPE_2__ t2 ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(void)
{
	int ret;

	FUNC3(&o2.base);
	FUNC4(&o2.base.dep_map, 1, _THIS_IP_);
	o2.ctx = &t2;

	FUNC3(&o3.base);
	FUNC4(&o3.base.dep_map, 1, _THIS_IP_);
	o3.ctx = &t2;

	FUNC1(&t);
	t2 = t;
	t2.stamp--;

	ret = FUNC2(&o, &t);
	FUNC0(ret);

	ret = FUNC2(&o2, &t);
	FUNC0(ret != -EDEADLK);

	FUNC5(&o3, &t);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  dep_map; } ;
struct TYPE_11__ {TYPE_5__ base; TYPE_1__* ctx; } ;
struct TYPE_10__ {int /*<<< orphan*/  stamp; } ;

/* Variables and functions */
 int EDEADLK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  _THIS_IP_ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 TYPE_3__ o ; 
 TYPE_3__ o2 ; 
 TYPE_1__ t ; 
 TYPE_1__ t2 ; 

__attribute__((used)) static void FUNC7(void)
{
	int ret;

	FUNC4(&o2.base);
	o2.ctx = &t2;
	FUNC5(&o2.base.dep_map, 1, _THIS_IP_);

	FUNC1(&t);
	t2 = t;
	t2.stamp--;

	ret = FUNC2(&o, &t);
	FUNC0(ret);

	ret = FUNC2(&o2, &t);
	FUNC0(ret != -EDEADLK);

	o2.ctx = NULL;
	FUNC3(&o2.base.dep_map, 0, 1, _THIS_IP_);
	FUNC6(&o2.base);

	FUNC2(&o2, &t);
}
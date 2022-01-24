#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  dep_map; } ;
struct TYPE_13__ {int /*<<< orphan*/  stamp; } ;
struct TYPE_12__ {TYPE_7__ base; TYPE_2__* ctx; } ;

/* Variables and functions */
 int EDEADLK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  _THIS_IP_ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 TYPE_1__ o ; 
 TYPE_1__ o2 ; 
 TYPE_2__ t ; 
 TYPE_2__ t2 ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC8(void)
{
	int ret;

	FUNC4(&o2.base);
	FUNC5(&o2.base.dep_map, 1, _THIS_IP_);
	o2.ctx = &t2;

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

	FUNC7(&o2, &t);
}
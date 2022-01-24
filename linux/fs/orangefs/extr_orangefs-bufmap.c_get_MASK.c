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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct slot_map {scalar_t__ c; TYPE_1__ q; int /*<<< orphan*/  map; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct slot_map*) ; 

__attribute__((used)) static int FUNC7(struct slot_map *m)
{
	int res = 0;
	FUNC3(&m->q.lock);
	if (FUNC5(m->c <= 0))
		res = FUNC6(m);
	if (FUNC2(!res)) {
		m->c--;
		res = FUNC1(m->map, m->count);
		FUNC0(res, m->map);
	}
	FUNC4(&m->q.lock);
	return res;
}
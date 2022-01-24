#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* card; } ;
typedef  TYPE_2__ vortex_t ;
struct TYPE_11__ {int slice; int source; int /*<<< orphan*/ * vortex; } ;
typedef  TYPE_3__ a3dsrc_t ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(a3dsrc_t *a, vortex_t *v)
{
	int i, var, var2;

	if ((a->vortex) == NULL) {
		FUNC3(v->card->dev,
			"ZeroStateA3D: ERROR: a->vortex is NULL\n");
		return;
	}

	FUNC0(a, 0);
	FUNC1(a, 0);

	var = a->slice;
	var2 = a->source;
	for (i = 0; i < 4; i++) {
		a->slice = i;
		FUNC2(a);
		//a3dsrc_ZeroState(a);
	}
	a->source = var2;
	a->slice = var;
}
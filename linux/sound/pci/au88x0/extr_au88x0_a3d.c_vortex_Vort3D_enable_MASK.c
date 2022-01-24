#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * a3d; } ;
typedef  TYPE_1__ vortex_t ;

/* Variables and functions */
 int NR_A3D ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XT_HEADPHONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(vortex_t *v)
{
	int i;

	FUNC0(v, XT_HEADPHONE);
	for (i = 0; i < NR_A3D; i++) {
		FUNC2(v, i % 4, i >> 2);
		FUNC1(&v->a3d[0], v);
	}
	/* Register ALSA controls */
	FUNC3(v);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int this10; int /*<<< orphan*/  coefset; } ;
struct TYPE_5__ {TYPE_2__ eq; } ;
typedef  TYPE_1__ vortex_t ;
typedef  TYPE_2__ eqlzr_t ;
typedef  int /*<<< orphan*/  auxxEqCoeffSet_t ;

/* Variables and functions */
 int /*<<< orphan*/  asEqCoefsNormal ; 
 int /*<<< orphan*/  eq_gains_normal ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(vortex_t * vortex)
{
	eqlzr_t *eq = &(vortex->eq);

	/* Set EQ BiQuad filter coeficients */
	FUNC0(&(eq->coefset), &asEqCoefsNormal, sizeof(auxxEqCoeffSet_t));
	/* Set EQ Band gain levels and dump into hardware registers. */
	FUNC1(vortex, eq_gains_normal, eq->this10 * 2);
}
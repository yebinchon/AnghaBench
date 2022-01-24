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
struct tc_service_curve {int /*<<< orphan*/  m2; int /*<<< orphan*/  d; int /*<<< orphan*/  m1; } ;
struct internal_sc {void* ism2; void* sm2; void* sm1; int /*<<< orphan*/  dx; int /*<<< orphan*/  dy; void* ism1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC4(struct tc_service_curve *sc, struct internal_sc *isc)
{
	isc->sm1  = FUNC2(sc->m1);
	isc->ism1 = FUNC1(sc->m1);
	isc->dx   = FUNC0(sc->d);
	isc->dy   = FUNC3(isc->dx, isc->sm1);
	isc->sm2  = FUNC2(sc->m2);
	isc->ism2 = FUNC1(sc->m2);
}
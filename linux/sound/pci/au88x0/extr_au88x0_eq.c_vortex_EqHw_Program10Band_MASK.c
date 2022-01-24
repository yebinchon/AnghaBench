#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vortex_t ;
struct TYPE_3__ {int /*<<< orphan*/  RightGains; int /*<<< orphan*/  LeftGains; int /*<<< orphan*/  RightCoefs; int /*<<< orphan*/  LeftCoefs; } ;
typedef  TYPE_1__ auxxEqCoeffSet_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC7(vortex_t * vortex, auxxEqCoeffSet_t * coefset)
{

	FUNC6(vortex, 0xc, 0x7fe0);

	FUNC0(vortex, coefset->LeftCoefs);
	FUNC3(vortex, coefset->RightCoefs);

	FUNC1(vortex, coefset->LeftGains);

	FUNC5(vortex, coefset->RightGains);
	FUNC2(vortex, coefset->LeftGains);

	FUNC4(vortex, coefset->RightGains);
}
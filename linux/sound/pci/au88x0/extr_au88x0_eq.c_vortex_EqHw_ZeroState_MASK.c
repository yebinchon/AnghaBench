#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  mmio; } ;
typedef  TYPE_1__ vortex_t ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  asEqCoefsZeros ; 
 int /*<<< orphan*/  asEqOutStateZeros ; 
 int /*<<< orphan*/  eq_gains_zero ; 
 scalar_t__ eq_levels ; 
 int /*<<< orphan*/  eq_states_zero ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC15(vortex_t * vortex)
{

	FUNC3(vortex, 0);
	FUNC14(vortex);
	FUNC0(vortex->mmio, 0x2b3c0, 0);

	FUNC13(vortex, 0, 0);

	FUNC4(vortex, asEqCoefsZeros);
	FUNC9(vortex, asEqCoefsZeros);

	FUNC5(vortex, eq_gains_zero);
	FUNC10(vortex, eq_gains_zero);
	FUNC6(vortex, eq_gains_zero);
	FUNC11(vortex, eq_gains_zero);

	FUNC2(vortex, 0, 0);
	//vortex_EqHw_SetCurrBypassGain(vortex, 0, 0);
	FUNC1(vortex, 0, 0);
	//vortex_EqHw_SetCurrA3DBypassGain(vortex, 0, 0);
	FUNC7(vortex, eq_states_zero, asEqOutStateZeros);
	FUNC12(vortex, eq_states_zero, asEqOutStateZeros);
	FUNC8(vortex, (u16 *) eq_levels);
}
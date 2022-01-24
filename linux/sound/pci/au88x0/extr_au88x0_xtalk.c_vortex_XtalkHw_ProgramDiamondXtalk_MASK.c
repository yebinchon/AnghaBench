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
typedef  int /*<<< orphan*/  vortex_t ;

/* Variables and functions */
 int /*<<< orphan*/  asDiamondCoefsLeftEq ; 
 int /*<<< orphan*/  asDiamondCoefsLeftXt ; 
 int /*<<< orphan*/  asDiamondCoefsRightEq ; 
 int /*<<< orphan*/  sDiamondKLeftEq ; 
 int /*<<< orphan*/  sDiamondKLeftXt ; 
 int /*<<< orphan*/  sDiamondKRightEq ; 
 int /*<<< orphan*/  sDiamondShiftLeftEq ; 
 int /*<<< orphan*/  sDiamondShiftLeftXt ; 
 int /*<<< orphan*/  sDiamondShiftRightEq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wDiamondLeftDelay ; 
 int /*<<< orphan*/  wDiamondRightDelay ; 

__attribute__((used)) static void FUNC5(vortex_t * vortex)
{

	//sDiamondKLeftEq,sDiamondKRightXt,asDiamondCoefsLeftEq
	FUNC1(vortex, sDiamondKLeftEq,
				 sDiamondShiftLeftEq, asDiamondCoefsLeftEq);
	FUNC3(vortex, sDiamondKRightEq,
				  sDiamondShiftRightEq, asDiamondCoefsRightEq);
	FUNC2(vortex, sDiamondKLeftXt,
				 sDiamondShiftLeftXt, asDiamondCoefsLeftXt);
	FUNC4(vortex, sDiamondKLeftXt,
				  sDiamondShiftLeftXt, asDiamondCoefsLeftXt);

	FUNC0(vortex, wDiamondRightDelay, wDiamondLeftDelay);	// inlined
}
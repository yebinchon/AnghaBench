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
 int /*<<< orphan*/  asXtalkWideCoefsLeftEq ; 
 int /*<<< orphan*/  asXtalkWideCoefsLeftXt ; 
 int /*<<< orphan*/  asXtalkWideCoefsRightEq ; 
 int /*<<< orphan*/  sXtalkWideKLeftEq ; 
 int /*<<< orphan*/  sXtalkWideKLeftXt ; 
 int /*<<< orphan*/  sXtalkWideKRightEq ; 
 int /*<<< orphan*/  sXtalkWideShiftLeftEq ; 
 int /*<<< orphan*/  sXtalkWideShiftLeftXt ; 
 int /*<<< orphan*/  sXtalkWideShiftRightEq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wXtalkWideLeftDelay ; 
 int /*<<< orphan*/  wXtalkWideRightDelay ; 

__attribute__((used)) static void FUNC5(vortex_t * vortex)
{

	FUNC1(vortex, sXtalkWideKLeftEq,
				 sXtalkWideShiftLeftEq, asXtalkWideCoefsLeftEq);
	FUNC3(vortex, sXtalkWideKRightEq,
				  sXtalkWideShiftRightEq,
				  asXtalkWideCoefsRightEq);
	FUNC2(vortex, sXtalkWideKLeftXt,
				 sXtalkWideShiftLeftXt, asXtalkWideCoefsLeftXt);
	FUNC4(vortex, sXtalkWideKLeftXt,
				  sXtalkWideShiftLeftXt,
				  asXtalkWideCoefsLeftXt);

	FUNC0(vortex, wXtalkWideRightDelay, wXtalkWideLeftDelay);	// inlined
}
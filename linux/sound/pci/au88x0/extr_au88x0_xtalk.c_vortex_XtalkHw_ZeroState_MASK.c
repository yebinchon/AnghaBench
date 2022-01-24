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
 int /*<<< orphan*/  alXtalkDlineZeros ; 
 int /*<<< orphan*/  asXtalkCoefsZeros ; 
 int /*<<< orphan*/  asXtalkGainsZeros ; 
 int /*<<< orphan*/  asXtalkInStateZeros ; 
 int /*<<< orphan*/  asXtalkOutStateZeros ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(vortex_t * vortex)
{
	FUNC12(vortex);	// inlined

	FUNC3(vortex, 0, 0, asXtalkCoefsZeros);
	FUNC8(vortex, 0, 0, asXtalkCoefsZeros);

	FUNC5(vortex, 0, 0, asXtalkCoefsZeros);
	FUNC10(vortex, 0, 0, asXtalkCoefsZeros);

	FUNC1(vortex, asXtalkGainsZeros);	// inlined

	FUNC0(vortex, 0, 0);	// inlined

	FUNC2(vortex, alXtalkDlineZeros);	// inlined
	FUNC7(vortex, alXtalkDlineZeros);	// inlined
	FUNC2(vortex, alXtalkDlineZeros);	// inlined
	FUNC7(vortex, alXtalkDlineZeros);	// inlined

	FUNC4(vortex, asXtalkInStateZeros,
				       asXtalkOutStateZeros);
	FUNC9(vortex, asXtalkInStateZeros,
					asXtalkOutStateZeros);
	FUNC6(vortex, asXtalkInStateZeros,
				       asXtalkOutStateZeros);
	FUNC11(vortex, asXtalkInStateZeros,
					asXtalkOutStateZeros);
}
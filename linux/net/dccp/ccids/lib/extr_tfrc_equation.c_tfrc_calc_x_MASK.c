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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  size_t u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int TFRC_CALC_X_ARRSIZE ; 
 int TFRC_CALC_X_SPLIT ; 
 int TFRC_SMALLEST_P ; 
 int /*<<< orphan*/  FUNC3 (size_t,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int** tfrc_calc_x_lookup ; 

u32 FUNC5(u16 s, u32 R, u32 p)
{
	u16 index;
	u32 f;
	u64 result;

	/* check against invalid parameters and divide-by-zero   */
	FUNC0(p >  1000000);		/* p must not exceed 100%   */
	FUNC0(p == 0);			/* f(0) = 0, divide by zero */
	if (R == 0) {			/* possible  divide by zero */
		FUNC1("WARNING: RTT is 0, returning maximum X_calc.");
		return ~0U;
	}

	if (p <= TFRC_CALC_X_SPLIT)		{     /* 0.0000 < p <= 0.05   */
		if (p < TFRC_SMALLEST_P) {	      /* 0.0000 < p <  0.0001 */
			FUNC2("Value of p (%d) below resolution. "
				  "Substituting %d\n", p, TFRC_SMALLEST_P);
			index = 0;
		} else				      /* 0.0001 <= p <= 0.05  */
			index =  p/TFRC_SMALLEST_P - 1;

		f = tfrc_calc_x_lookup[index][1];

	} else {				      /* 0.05   <  p <= 1.00  */
		index = p/(1000000/TFRC_CALC_X_ARRSIZE) - 1;

		f = tfrc_calc_x_lookup[index][0];
	}

	/*
	 * Compute X = s/(R*f(p)) in bytes per second.
	 * Since f(p) and R are both scaled by 1000000, we need to multiply by
	 * 1000000^2. To avoid overflow, the result is computed in two stages.
	 * This works under almost all reasonable operational conditions, for a
	 * wide range of parameters. Yet, should some strange combination of
	 * parameters result in overflow, the use of scaled_div32 will catch
	 * this and return UINT_MAX - which is a logically adequate consequence.
	 */
	result = FUNC3(s, R);
	return FUNC4(result, f);
}
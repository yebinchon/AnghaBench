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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct load_weight {int inv_weight; } ;

/* Variables and functions */
 int WMULT_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct load_weight*) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static u64 FUNC4(u64 delta_exec, unsigned long weight, struct load_weight *lw)
{
	u64 fact = FUNC2(weight);
	int shift = WMULT_SHIFT;

	FUNC0(lw);

	if (FUNC3(fact >> 32)) {
		while (fact >> 32) {
			fact >>= 1;
			shift--;
		}
	}

	/* hint to use a 32x32->64 mul */
	fact = (u64)(u32)fact * lw->inv_weight;

	while (fact >> 32) {
		fact >>= 1;
		shift--;
	}

	return FUNC1(delta_exec, fact, shift);
}
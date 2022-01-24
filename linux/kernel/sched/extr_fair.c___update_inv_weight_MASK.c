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
struct load_weight {int inv_weight; int /*<<< orphan*/  weight; } ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 unsigned long WMULT_CONST ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct load_weight *lw)
{
	unsigned long w;

	if (FUNC0(lw->inv_weight))
		return;

	w = FUNC1(lw->weight);

	if (BITS_PER_LONG > 32 && FUNC2(w >= WMULT_CONST))
		lw->inv_weight = 1;
	else if (FUNC2(!w))
		lw->inv_weight = WMULT_CONST;
	else
		lw->inv_weight = WMULT_CONST / w;
}
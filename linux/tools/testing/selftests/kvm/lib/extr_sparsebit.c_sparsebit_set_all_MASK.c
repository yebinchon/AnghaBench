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
struct sparsebit {int dummy; } ;
typedef  int /*<<< orphan*/  sparsebit_idx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sparsebit*) ; 
 int /*<<< orphan*/  FUNC2 (struct sparsebit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sparsebit*,int,int /*<<< orphan*/ ) ; 

void FUNC4(struct sparsebit *s)
{
	FUNC2(s, 0);
	FUNC3(s, 1, ~(sparsebit_idx_t) 0);
	FUNC0(FUNC1(s));
}
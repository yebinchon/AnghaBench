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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

void FUNC3(int base)
{
	FUNC0(idr);
	FUNC1(&idr, base);
	FUNC2(&idr, 10);
	FUNC2(&idr, 0x7fffffff);
	FUNC2(&idr, 0x80000000);
	FUNC2(&idr, 0x80000001);
	FUNC2(&idr, 0xffe00000);
	FUNC2(&idr, 0xffffffff);
}
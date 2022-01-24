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
struct xarray {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xarray*,int) ; 
 scalar_t__ FUNC1 (struct xarray*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC2 (struct xarray*,unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(struct xarray *xa, unsigned long index)
{
	FUNC0(xa, FUNC1(xa, index) != FUNC3(index));
	FUNC0(xa, FUNC2(xa, index) != NULL);
}
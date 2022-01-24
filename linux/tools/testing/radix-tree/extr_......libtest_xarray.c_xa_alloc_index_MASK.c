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
typedef  unsigned long u32 ;
struct xarray {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xarray*,int) ; 
 scalar_t__ FUNC1 (struct xarray*,unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xa_limit_32b ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static void FUNC3(struct xarray *xa, unsigned long index, gfp_t gfp)
{
	u32 id;

	FUNC0(xa, FUNC1(xa, &id, FUNC2(index), xa_limit_32b,
				gfp) != 0);
	FUNC0(xa, id != index);
}
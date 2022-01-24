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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 void* FUNC0 (struct xarray*,unsigned long,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xarray*) ; 
 int /*<<< orphan*/  FUNC2 (struct xarray*) ; 

void *FUNC3(struct xarray *xa, unsigned long index, void *entry, gfp_t gfp)
{
	void *curr;

	FUNC1(xa);
	curr = FUNC0(xa, index, entry, gfp);
	FUNC2(xa);

	return curr;
}
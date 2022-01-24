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
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct xarray*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xarray*) ; 
 int /*<<< orphan*/  FUNC2 (struct xarray*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct xarray*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct xarray*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct xarray *xa, char *name)
{
	int i;

	FUNC0(xa, !FUNC1(xa));

	for (i = 0; i < 8; i++) {
		FUNC0(xa, FUNC4(xa, 0, name + i, GFP_KERNEL) != NULL);
		FUNC2(xa, 0);
	}

	for (i = 0; i < 8; i++) {
		FUNC0(xa, FUNC3(xa, 0, GFP_KERNEL) != 0);
		FUNC0(xa, FUNC4(xa, 0, name + i, 0) != NULL);
		FUNC2(xa, 0);
	}

	FUNC0(xa, !FUNC1(xa));
}
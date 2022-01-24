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
struct xarray {int xa_flags; int /*<<< orphan*/  xa_head; } ;
struct ida {struct xarray xa; } ;

/* Variables and functions */
 int ROOT_TAG_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ida*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ida *ida)
{
	struct xarray *xa = &ida->xa;
	FUNC1("ida: %p node %p free %d\n", ida, xa->xa_head,
				xa->xa_flags >> ROOT_TAG_SHIFT);
	FUNC0(xa->xa_head, 0);
}
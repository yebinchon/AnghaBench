#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct xarray {int /*<<< orphan*/  xa_head; } ;
struct TYPE_7__ {int /*<<< orphan*/ * xa_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XA_FREE_MARK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,struct xarray*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct xarray*) ; 
 scalar_t__ FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct xarray*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ FUNC6 (struct xarray*) ; 
 TYPE_1__ xas ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,unsigned long) ; 

void FUNC11(struct xarray *xa)
{
	FUNC1(xas, xa, 0);
	unsigned long flags;
	void *entry;

	xas.xa_node = NULL;
	FUNC9(&xas, flags);
	entry = FUNC2(xa);
	FUNC0(xa->xa_head, NULL);
	FUNC8(&xas);
	if (FUNC6(xa))
		FUNC4(xa, XA_FREE_MARK);
	/* lockdep checks we're still holding the lock in xas_free_nodes() */
	if (FUNC3(entry))
		FUNC7(&xas, FUNC5(entry));
	FUNC10(&xas, flags);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct xarray {int dummy; } ;
struct xa_limit {int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_9__ {scalar_t__ xa_node; int /*<<< orphan*/  xa_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ XAS_RESTART ; 
 int /*<<< orphan*/  XA_FREE_MARK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,struct xarray*,int /*<<< orphan*/ ) ; 
 void* XA_ZERO_ENTRY ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct xarray*) ; 
 TYPE_1__ xas ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,void*) ; 

int FUNC10(struct xarray *xa, u32 *id, void *entry,
		struct xa_limit limit, gfp_t gfp)
{
	FUNC1(xas, xa, 0);

	if (FUNC0(FUNC3(entry)))
		return -EINVAL;
	if (FUNC0(!FUNC4(xa)))
		return -EINVAL;

	if (!entry)
		entry = XA_ZERO_ENTRY;

	do {
		xas.xa_index = limit.min;
		FUNC7(&xas, limit.max, XA_FREE_MARK);
		if (xas.xa_node == XAS_RESTART)
			FUNC8(&xas, -EBUSY);
		else
			*id = xas.xa_index;
		FUNC9(&xas, entry);
		FUNC5(&xas, XA_FREE_MARK);
	} while (FUNC2(&xas, gfp));

	return FUNC6(&xas);
}
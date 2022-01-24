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
typedef  scalar_t__ xa_mark_t ;
struct xa_state {int /*<<< orphan*/  xa; } ;

/* Variables and functions */
 scalar_t__ XA_FREE_MARK ; 
 scalar_t__ XA_MARK_MAX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xa_state const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct xa_state const*,scalar_t__) ; 

void FUNC4(const struct xa_state *xas)
{
	xa_mark_t mark = 0;

	for (;;) {
		if (FUNC1(xas->xa) && mark == XA_FREE_MARK)
			FUNC3(xas, mark);
		else
			FUNC2(xas, mark);
		if (mark == XA_MARK_MAX)
			break;
		FUNC0(mark);
	}
}
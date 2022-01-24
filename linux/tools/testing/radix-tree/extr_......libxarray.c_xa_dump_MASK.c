#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xarray {int /*<<< orphan*/  xa_flags; void* xa_head; } ;
struct TYPE_2__ {unsigned int shift; } ;

/* Variables and functions */
 unsigned int XA_CHUNK_SHIFT ; 
 int /*<<< orphan*/  XA_MARK_0 ; 
 int /*<<< orphan*/  XA_MARK_1 ; 
 int /*<<< orphan*/  XA_MARK_2 ; 
 int /*<<< orphan*/  FUNC0 (char*,struct xarray const*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct xarray const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (void*) ; 

void FUNC5(const struct xarray *xa)
{
	void *entry = xa->xa_head;
	unsigned int shift = 0;

	FUNC0("xarray: %px head %px flags %x marks %d %d %d\n", xa, entry,
			xa->xa_flags, FUNC3(xa, XA_MARK_0),
			FUNC3(xa, XA_MARK_1), FUNC3(xa, XA_MARK_2));
	if (FUNC2(entry))
		shift = FUNC4(entry)->shift + XA_CHUNK_SHIFT;
	FUNC1(entry, 0, shift);
}
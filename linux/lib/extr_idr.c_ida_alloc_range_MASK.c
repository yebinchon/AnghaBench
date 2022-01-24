#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct ida_bitmap {unsigned long* bitmap; } ;
struct ida {int /*<<< orphan*/  xa; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_11__ {unsigned int xa_index; } ;

/* Variables and functions */
 unsigned int BITS_PER_XA_VALUE ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 unsigned int IDA_BITMAP_BITS ; 
 unsigned int INT_MAX ; 
 int /*<<< orphan*/  XA_FREE_MARK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned long*) ; 
 scalar_t__ FUNC2 (unsigned long*,unsigned int) ; 
 unsigned int FUNC3 (unsigned long*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct ida_bitmap*) ; 
 struct ida_bitmap* FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct ida_bitmap*) ; 
 struct ida_bitmap* FUNC7 (unsigned long) ; 
 unsigned long FUNC8 (struct ida_bitmap*) ; 
 TYPE_1__ xas ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*) ; 
 struct ida_bitmap* FUNC11 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,unsigned long) ; 
 scalar_t__ FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,struct ida_bitmap*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,unsigned long) ; 

int FUNC17(struct ida *ida, unsigned int min, unsigned int max,
			gfp_t gfp)
{
	FUNC0(xas, &ida->xa, min / IDA_BITMAP_BITS);
	unsigned bit = min % IDA_BITMAP_BITS;
	unsigned long flags;
	struct ida_bitmap *bitmap, *alloc = NULL;

	if ((int)min < 0)
		return -ENOSPC;

	if ((int)max < 0)
		max = INT_MAX;

retry:
	FUNC12(&xas, flags);
next:
	bitmap = FUNC11(&xas, max / IDA_BITMAP_BITS, XA_FREE_MARK);
	if (xas.xa_index > min / IDA_BITMAP_BITS)
		bit = 0;
	if (xas.xa_index * IDA_BITMAP_BITS + bit > max)
		goto nospc;

	if (FUNC6(bitmap)) {
		unsigned long tmp = FUNC8(bitmap);

		if (bit < BITS_PER_XA_VALUE) {
			bit = FUNC3(&tmp, BITS_PER_XA_VALUE, bit);
			if (xas.xa_index * IDA_BITMAP_BITS + bit > max)
				goto nospc;
			if (bit < BITS_PER_XA_VALUE) {
				tmp |= 1UL << bit;
				FUNC15(&xas, FUNC7(tmp));
				goto out;
			}
		}
		bitmap = alloc;
		if (!bitmap)
			bitmap = FUNC5(sizeof(*bitmap), GFP_NOWAIT);
		if (!bitmap)
			goto alloc;
		bitmap->bitmap[0] = tmp;
		FUNC15(&xas, bitmap);
		if (FUNC10(&xas)) {
			bitmap->bitmap[0] = 0;
			goto out;
		}
	}

	if (bitmap) {
		bit = FUNC3(bitmap->bitmap, IDA_BITMAP_BITS, bit);
		if (xas.xa_index * IDA_BITMAP_BITS + bit > max)
			goto nospc;
		if (bit == IDA_BITMAP_BITS)
			goto next;

		FUNC1(bit, bitmap->bitmap);
		if (FUNC2(bitmap->bitmap, IDA_BITMAP_BITS))
			FUNC9(&xas, XA_FREE_MARK);
	} else {
		if (bit < BITS_PER_XA_VALUE) {
			bitmap = FUNC7(1UL << bit);
		} else {
			bitmap = alloc;
			if (!bitmap)
				bitmap = FUNC5(sizeof(*bitmap), GFP_NOWAIT);
			if (!bitmap)
				goto alloc;
			FUNC1(bit, bitmap->bitmap);
		}
		FUNC15(&xas, bitmap);
	}
out:
	FUNC16(&xas, flags);
	if (FUNC13(&xas, gfp)) {
		xas.xa_index = min / IDA_BITMAP_BITS;
		bit = min % IDA_BITMAP_BITS;
		goto retry;
	}
	if (bitmap != alloc)
		FUNC4(alloc);
	if (FUNC10(&xas))
		return FUNC10(&xas);
	return xas.xa_index * IDA_BITMAP_BITS + bit;
alloc:
	FUNC16(&xas, flags);
	alloc = FUNC5(sizeof(*bitmap), gfp);
	if (!alloc)
		return -ENOMEM;
	FUNC14(&xas, min / IDA_BITMAP_BITS);
	bit = min % IDA_BITMAP_BITS;
	goto retry;
nospc:
	FUNC16(&xas, flags);
	return -ENOSPC;
}
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
struct ida_bitmap {int /*<<< orphan*/  bitmap; } ;
struct ida {int /*<<< orphan*/  xa; } ;

/* Variables and functions */
 unsigned int BITS_PER_XA_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int IDA_BITMAP_BITS ; 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  XA_FREE_MARK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct ida_bitmap*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ida_bitmap*) ; 
 int /*<<< orphan*/ * FUNC8 (unsigned long) ; 
 unsigned long FUNC9 (struct ida_bitmap*) ; 
 int /*<<< orphan*/  xas ; 
 struct ida_bitmap* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC15(struct ida *ida, unsigned int id)
{
	FUNC2(xas, &ida->xa, id / IDA_BITMAP_BITS);
	unsigned bit = id % IDA_BITMAP_BITS;
	struct ida_bitmap *bitmap;
	unsigned long flags;

	FUNC0((int)id < 0);

	FUNC11(&xas, flags);
	bitmap = FUNC10(&xas);

	if (FUNC7(bitmap)) {
		unsigned long v = FUNC9(bitmap);
		if (bit >= BITS_PER_XA_VALUE)
			goto err;
		if (!(v & (1UL << bit)))
			goto err;
		v &= ~(1UL << bit);
		if (!v)
			goto delete;
		FUNC13(&xas, FUNC8(v));
	} else {
		if (!FUNC6(bit, bitmap->bitmap))
			goto err;
		FUNC3(bit, bitmap->bitmap);
		FUNC12(&xas, XA_FREE_MARK);
		if (FUNC4(bitmap->bitmap, IDA_BITMAP_BITS)) {
			FUNC5(bitmap);
delete:
			FUNC13(&xas, NULL);
		}
	}
	FUNC14(&xas, flags);
	return;
 err:
	FUNC14(&xas, flags);
	FUNC1(1, "ida_free called for id=%d which is not allocated.\n", id);
}
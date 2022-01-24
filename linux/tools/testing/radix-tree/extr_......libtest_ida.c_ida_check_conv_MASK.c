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
struct ida {int dummy; } ;

/* Variables and functions */
 unsigned long BITS_PER_LONG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IDA_BITMAP_BITS ; 
 int /*<<< orphan*/  FUNC0 (struct ida*,int) ; 
 unsigned long FUNC1 (struct ida*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct ida*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ida*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct ida*) ; 

__attribute__((used)) static void FUNC5(struct ida *ida)
{
	unsigned long i;

	for (i = 0; i < IDA_BITMAP_BITS * 2; i += IDA_BITMAP_BITS) {
		FUNC0(ida, FUNC2(ida, i + 1, GFP_KERNEL) != i + 1);
		FUNC0(ida, FUNC2(ida, i + BITS_PER_LONG,
					GFP_KERNEL) != i + BITS_PER_LONG);
		FUNC3(ida, i + 1);
		FUNC3(ida, i + BITS_PER_LONG);
		FUNC0(ida, !FUNC4(ida));
	}

	for (i = 0; i < IDA_BITMAP_BITS * 2; i++)
		FUNC0(ida, FUNC1(ida, GFP_KERNEL) != i);
	for (i = IDA_BITMAP_BITS * 2; i > 0; i--)
		FUNC3(ida, i - 1);
	FUNC0(ida, !FUNC4(ida));

	for (i = 0; i < IDA_BITMAP_BITS + BITS_PER_LONG - 4; i++)
		FUNC0(ida, FUNC1(ida, GFP_KERNEL) != i);
	for (i = IDA_BITMAP_BITS + BITS_PER_LONG - 4; i > 0; i--)
		FUNC3(ida, i - 1);
	FUNC0(ida, !FUNC4(ida));
}
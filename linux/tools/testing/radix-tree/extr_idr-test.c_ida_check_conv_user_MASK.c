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

/* Variables and functions */
 unsigned long BITS_PER_XA_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 unsigned long IDA_BITMAP_BITS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ida ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	FUNC0(ida);
	unsigned long i;

	for (i = 0; i < 1000000; i++) {
		int id = FUNC2(&ida, GFP_NOWAIT);
		if (id == -ENOMEM) {
			FUNC1(&ida, ((i % IDA_BITMAP_BITS) !=
					  BITS_PER_XA_VALUE) &&
					 ((i % IDA_BITMAP_BITS) != 0));
			id = FUNC2(&ida, GFP_KERNEL);
		} else {
			FUNC1(&ida, (i % IDA_BITMAP_BITS) ==
					BITS_PER_XA_VALUE);
		}
		FUNC1(&ida, id != i);
	}
	FUNC3(&ida);
}
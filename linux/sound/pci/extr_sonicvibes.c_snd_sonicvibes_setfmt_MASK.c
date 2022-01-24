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
struct sonicvibes {unsigned char format; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  INDEX ; 
 int SV_IREG_DMA_DATA_FMT ; 
 int SV_MCE ; 
 int /*<<< orphan*/  FUNC0 (struct sonicvibes*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct sonicvibes * sonic,
                                  unsigned char mask,
                                  unsigned char value)
{
	unsigned long flags;

	FUNC3(&sonic->reg_lock, flags);
	FUNC2(SV_MCE | SV_IREG_DMA_DATA_FMT, FUNC0(sonic, INDEX));
	if (mask) {
		sonic->format = FUNC1(FUNC0(sonic, DATA));
		FUNC5(10);
	}
	sonic->format = (sonic->format & mask) | value;
	FUNC2(sonic->format, FUNC0(sonic, DATA));
	FUNC5(10);
	FUNC2(0, FUNC0(sonic, INDEX));
	FUNC5(10);
	FUNC4(&sonic->reg_lock, flags);
}
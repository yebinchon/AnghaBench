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
struct timespec64 {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct timekeeper {scalar_t__ offs_real; int /*<<< orphan*/  tai_offset; int /*<<< orphan*/  offs_tai; struct timespec64 wall_to_monotonic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec64*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct timespec64) ; 

__attribute__((used)) static void FUNC5(struct timekeeper *tk, struct timespec64 wtm)
{
	struct timespec64 tmp;

	/*
	 * Verify consistency of: offset_real = -wall_to_monotonic
	 * before modifying anything
	 */
	FUNC3(&tmp, -tk->wall_to_monotonic.tv_sec,
					-tk->wall_to_monotonic.tv_nsec);
	FUNC0(tk->offs_real != FUNC4(tmp));
	tk->wall_to_monotonic = wtm;
	FUNC3(&tmp, -wtm.tv_sec, -wtm.tv_nsec);
	tk->offs_real = FUNC4(tmp);
	tk->offs_tai = FUNC1(tk->offs_real, FUNC2(tk->tai_offset, 0));
}
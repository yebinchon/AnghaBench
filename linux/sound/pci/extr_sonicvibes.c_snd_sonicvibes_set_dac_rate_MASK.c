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
struct sonicvibes {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int SV_FULLRATE ; 
 int /*<<< orphan*/  SV_IREG_PCM_RATE_HIGH ; 
 int /*<<< orphan*/  SV_IREG_PCM_RATE_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct sonicvibes*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct sonicvibes * sonic, unsigned int rate)
{
	unsigned int div;
	unsigned long flags;

	div = (rate * 65536 + SV_FULLRATE / 2) / SV_FULLRATE;
	if (div > 65535)
		div = 65535;
	FUNC1(&sonic->reg_lock, flags);
	FUNC0(sonic, SV_IREG_PCM_RATE_HIGH, div >> 8);
	FUNC0(sonic, SV_IREG_PCM_RATE_LOW, div);
	FUNC2(&sonic->reg_lock, flags);
}
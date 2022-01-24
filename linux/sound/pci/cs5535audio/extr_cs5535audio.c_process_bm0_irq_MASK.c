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
typedef  int u8 ;
struct cs5535audio {TYPE_1__* card; int /*<<< orphan*/  playback_substream; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACC_BM0_STATUS ; 
 int EOP ; 
 int FUNC0 (struct cs5535audio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct cs5535audio *cs5535au)
{
	u8 bm_stat;
	FUNC3(&cs5535au->reg_lock);
	bm_stat = FUNC0(cs5535au, ACC_BM0_STATUS);
	FUNC4(&cs5535au->reg_lock);
	if (bm_stat & EOP) {
		FUNC2(cs5535au->playback_substream);
	} else {
		FUNC1(cs5535au->card->dev,
			"unexpected bm0 irq src, bm_stat=%x\n",
			bm_stat);
	}
}
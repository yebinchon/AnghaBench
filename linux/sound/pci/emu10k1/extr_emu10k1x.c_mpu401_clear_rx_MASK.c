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
struct emu10k1x_midi {int dummy; } ;
struct emu10k1x {TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct emu10k1x*,struct emu10k1x_midi*) ; 
 int /*<<< orphan*/  FUNC2 (struct emu10k1x*,struct emu10k1x_midi*) ; 
 int /*<<< orphan*/  FUNC3 (struct emu10k1x*,struct emu10k1x_midi*) ; 

__attribute__((used)) static void FUNC4(struct emu10k1x *emu, struct emu10k1x_midi *mpu)
{
	int timeout = 100000;
	for (; timeout > 0 && FUNC1(emu, mpu); timeout--)
		FUNC2(emu, mpu);
#ifdef CONFIG_SND_DEBUG
	if (timeout <= 0)
		dev_err(emu->card->dev,
			"cmd: clear rx timeout (status = 0x%x)\n",
			mpu401_read_stat(emu, mpu));
#endif
}
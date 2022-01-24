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
struct snd_cs4231 {int mce_bit; int /*<<< orphan*/  lock; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_cs4231*,int /*<<< orphan*/ ) ; 
 int CS4231_INIT ; 
 int CS4231_MCE ; 
 int /*<<< orphan*/  REGSEL ; 
 int FUNC1 (struct snd_cs4231*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_cs4231*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_cs4231*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct snd_cs4231 *chip)
{
	unsigned long flags;
	int timeout;

	FUNC5(&chip->lock, flags);
	FUNC3(chip);
#ifdef CONFIG_SND_DEBUG
	if (__cs4231_readb(chip, CS4231U(chip, REGSEL)) & CS4231_INIT)
		snd_printdd("mce_up - auto calibration time out (0)\n");
#endif
	chip->mce_bit |= CS4231_MCE;
	timeout = FUNC1(chip, FUNC0(chip, REGSEL));
	if (timeout == 0x80)
		FUNC4("mce_up [%p]: serious init problem - "
			    "codec still busy\n",
			    chip->port);
	if (!(timeout & CS4231_MCE))
		FUNC2(chip, chip->mce_bit | (timeout & 0x1f),
				FUNC0(chip, REGSEL));
	FUNC6(&chip->lock, flags);
}
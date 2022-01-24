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
struct snd_ac97 {int dummy; } ;
struct atmel_ac97c {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AC97C_CSR_TXRDY ; 
 int /*<<< orphan*/  COSR ; 
 int /*<<< orphan*/  COTHR ; 
 int FUNC0 (struct atmel_ac97c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_ac97c*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct atmel_ac97c* FUNC3 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct snd_ac97 *ac97, unsigned short reg,
		unsigned short val)
{
	struct atmel_ac97c *chip = FUNC3(ac97);
	unsigned long word;
	int timeout = 40;

	word = (reg & 0x7f) << 16 | val;

	do {
		if (FUNC0(chip, COSR) & AC97C_CSR_TXRDY) {
			FUNC1(chip, COTHR, word);
			return;
		}
		FUNC4(1);
	} while (--timeout);

	FUNC2(&chip->pdev->dev, "codec write timeout\n");
}
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
 unsigned short AC97C_CSR_RXRDY ; 
 unsigned short AC97C_CSR_TXRDY ; 
 int /*<<< orphan*/  CORHR ; 
 int /*<<< orphan*/  COSR ; 
 int /*<<< orphan*/  COTHR ; 
 unsigned short FUNC0 (struct atmel_ac97c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_ac97c*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct atmel_ac97c* FUNC3 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static unsigned short FUNC5(struct snd_ac97 *ac97,
		unsigned short reg)
{
	struct atmel_ac97c *chip = FUNC3(ac97);
	unsigned long word;
	int timeout = 40;
	int write = 10;

	word = (0x80 | (reg & 0x7f)) << 16;

	if ((FUNC0(chip, COSR) & AC97C_CSR_RXRDY) != 0)
		FUNC0(chip, CORHR);

retry_write:
	timeout = 40;

	do {
		if ((FUNC0(chip, COSR) & AC97C_CSR_TXRDY) != 0) {
			FUNC1(chip, COTHR, word);
			goto read_reg;
		}
		FUNC4(10);
	} while (--timeout);

	if (!--write)
		goto timed_out;
	goto retry_write;

read_reg:
	do {
		if ((FUNC0(chip, COSR) & AC97C_CSR_RXRDY) != 0) {
			unsigned short val = FUNC0(chip, CORHR);
			return val;
		}
		FUNC4(10);
	} while (--timeout);

	if (!--write)
		goto timed_out;
	goto retry_write;

timed_out:
	FUNC2(&chip->pdev->dev, "codec read timeout\n");
	return 0xffff;
}
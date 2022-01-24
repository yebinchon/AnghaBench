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
struct snd_card {int dummy; } ;
struct platform_device {int dummy; } ;
struct atmel_ac97c {int /*<<< orphan*/  irq; int /*<<< orphan*/  regs; int /*<<< orphan*/  pclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAMR ; 
 int /*<<< orphan*/  COMR ; 
 int /*<<< orphan*/  MR ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_ac97c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct atmel_ac97c*) ; 
 struct atmel_ac97c* FUNC4 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct snd_card* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_card*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct snd_card *card = FUNC6(pdev);
	struct atmel_ac97c *chip = FUNC4(card);

	FUNC0(chip, CAMR, 0);
	FUNC0(chip, COMR, 0);
	FUNC0(chip, MR,   0);

	FUNC1(chip->pclk);
	FUNC2(chip->pclk);
	FUNC5(chip->regs);
	FUNC3(chip->irq, chip);

	FUNC7(card);

	return 0;
}
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
struct snd_azf3328 {scalar_t__ irq; int /*<<< orphan*/  pci; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct snd_azf3328*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_azf3328*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_azf3328*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_azf3328*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct snd_azf3328 *chip)
{
	if (chip->irq < 0)
		goto __end_hw;

	FUNC5(chip);

	FUNC6(chip->timer);
	FUNC4(chip);

__end_hw:
	if (chip->irq >= 0)
		FUNC0(chip->irq, chip);
	FUNC3(chip->pci);
	FUNC2(chip->pci);

	FUNC1(chip);
	return 0;
}
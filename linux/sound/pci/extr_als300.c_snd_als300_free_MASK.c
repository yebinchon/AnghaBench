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
struct snd_als300 {scalar_t__ irq; int /*<<< orphan*/  pci; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct snd_als300*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_als300*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_als300*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_als300 *chip)
{
	FUNC4(chip, IRQ_DISABLE);
	if (chip->irq >= 0)
		FUNC0(chip->irq, chip);
	FUNC3(chip->pci);
	FUNC2(chip->pci);
	FUNC1(chip);
	return 0;
}
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
struct snd_es1688 {scalar_t__ hardware; scalar_t__ irq; scalar_t__ dma8; int /*<<< orphan*/  res_port; } ;

/* Variables and functions */
 scalar_t__ ES1688_HW_UNDEF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_es1688*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_es1688 *chip)
{
	if (chip->hardware != ES1688_HW_UNDEF)
		FUNC4(chip, 0);
	FUNC3(chip->res_port);
	if (chip->irq >= 0)
		FUNC2(chip->irq, (void *) chip);
	if (chip->dma8 >= 0) {
		FUNC0(chip->dma8);
		FUNC1(chip->dma8);
	}
	return 0;
}
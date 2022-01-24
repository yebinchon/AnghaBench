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
struct snd_device {struct snd_at73c213* device_data; } ;
struct snd_at73c213 {int irq; TYPE_1__* ssc; } ;
struct TYPE_2__ {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR ; 
 int /*<<< orphan*/  CR_TXDIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct snd_at73c213*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_device *device)
{
	struct snd_at73c213 *chip = device->device_data;

	FUNC2(chip->ssc->regs, CR, FUNC0(CR_TXDIS));
	if (chip->irq >= 0) {
		FUNC1(chip->irq, chip);
		chip->irq = -1;
	}

	return 0;
}
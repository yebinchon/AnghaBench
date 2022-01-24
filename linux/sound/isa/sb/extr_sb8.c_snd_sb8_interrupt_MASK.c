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
struct snd_sb {int open; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int SB_OPEN_PCM ; 
 int /*<<< orphan*/  FUNC0 (struct snd_sb*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sb*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	struct snd_sb *chip = dev_id;

	if (chip->open & SB_OPEN_PCM) {
		return FUNC0(chip);
	} else {
		return FUNC1(chip);
	}
}
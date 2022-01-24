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
struct snd_msnd {int /*<<< orphan*/  irq; int /*<<< orphan*/  io; int /*<<< orphan*/  base; int /*<<< orphan*/  mappedbase; } ;
struct snd_card {struct snd_msnd* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFSIZE ; 
 int /*<<< orphan*/  DSP_NUMIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct snd_msnd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_card*) ; 

__attribute__((used)) static void FUNC5(struct snd_card *card)
{
	struct snd_msnd *chip = card->private_data;

	FUNC1(chip->mappedbase);
	FUNC2(chip->base, BUFFSIZE);
	FUNC3(chip->io, DSP_NUMIO);
	FUNC0(chip->irq, chip);
	FUNC4(card);
}
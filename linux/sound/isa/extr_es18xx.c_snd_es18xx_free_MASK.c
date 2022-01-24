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
struct snd_es18xx {scalar_t__ irq; scalar_t__ dma1; scalar_t__ dma2; int /*<<< orphan*/  res_mpu_port; int /*<<< orphan*/  res_ctrl_port; int /*<<< orphan*/  res_port; } ;
struct snd_card {struct snd_es18xx* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_card *card)
{
	struct snd_es18xx *chip = card->private_data;

	FUNC3(chip->res_port);
	FUNC3(chip->res_ctrl_port);
	FUNC3(chip->res_mpu_port);
	if (chip->irq >= 0)
		FUNC2(chip->irq, (void *) card);
	if (chip->dma1 >= 0) {
		FUNC0(chip->dma1);
		FUNC1(chip->dma1);
	}
	if (chip->dma2 >= 0 && chip->dma1 != chip->dma2) {
		FUNC0(chip->dma2);
		FUNC1(chip->dma2);
	}
	return 0;
}
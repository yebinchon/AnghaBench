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
struct snd_opti9xx {scalar_t__ irq; int /*<<< orphan*/  res_mc_base; int /*<<< orphan*/  res_mc_indir; } ;
struct snd_card {struct snd_opti9xx* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct snd_opti9xx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_card *card)
{
	struct snd_opti9xx *chip = card->private_data;

	if (chip) {
#ifdef OPTi93X
		if (chip->irq > 0) {
			disable_irq(chip->irq);
			free_irq(chip->irq, chip);
		}
		release_and_free_resource(chip->res_mc_indir);
#endif
		FUNC2(chip->res_mc_base);
	}
}
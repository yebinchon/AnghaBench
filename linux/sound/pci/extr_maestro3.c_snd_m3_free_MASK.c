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
struct snd_m3 {int num_substreams; scalar_t__ irq; int /*<<< orphan*/  pci; int /*<<< orphan*/  assp_minisrc_image; int /*<<< orphan*/  assp_kernel_image; scalar_t__ iobase; int /*<<< orphan*/  suspend_mem; struct snd_m3* substreams; int /*<<< orphan*/  reg_lock; scalar_t__ substream; scalar_t__ running; scalar_t__ input_dev; int /*<<< orphan*/  hwvol_work; } ;
struct m3_dma {int num_substreams; scalar_t__ irq; int /*<<< orphan*/  pci; int /*<<< orphan*/  assp_minisrc_image; int /*<<< orphan*/  assp_kernel_image; scalar_t__ iobase; int /*<<< orphan*/  suspend_mem; struct m3_dma* substreams; int /*<<< orphan*/  reg_lock; scalar_t__ substream; scalar_t__ running; scalar_t__ input_dev; int /*<<< orphan*/  hwvol_work; } ;

/* Variables and functions */
 scalar_t__ HOST_INT_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct snd_m3*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_m3*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_m3*,struct snd_m3*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct snd_m3 *chip)
{
	struct m3_dma *s;
	int i;

	FUNC0(&chip->hwvol_work);
#ifdef CONFIG_SND_MAESTRO3_INPUT
	if (chip->input_dev)
		input_unregister_device(chip->input_dev);
#endif

	if (chip->substreams) {
		FUNC9(&chip->reg_lock);
		for (i = 0; i < chip->num_substreams; i++) {
			s = &chip->substreams[i];
			/* check surviving pcms; this should not happen though.. */
			if (s->substream && s->running)
				FUNC8(chip, s, s->substream);
		}
		FUNC10(&chip->reg_lock);
		FUNC3(chip->substreams);
	}
	if (chip->iobase) {
		FUNC4(0, chip->iobase + HOST_INT_CTRL); /* disable ints */
	}

#ifdef CONFIG_PM_SLEEP
	vfree(chip->suspend_mem);
#endif

	if (chip->irq >= 0)
		FUNC1(chip->irq, chip);

	if (chip->iobase)
		FUNC6(chip->pci);

	FUNC7(chip->assp_kernel_image);
	FUNC7(chip->assp_minisrc_image);

	FUNC5(chip->pci);
	FUNC3(chip);
	return 0;
}
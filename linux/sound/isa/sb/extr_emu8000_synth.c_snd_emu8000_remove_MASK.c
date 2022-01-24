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
struct snd_seq_device {int /*<<< orphan*/  card; struct snd_emu8000* driver_data; } ;
struct snd_emu8000 {int /*<<< orphan*/ * memhdr; int /*<<< orphan*/ * emu; scalar_t__ pcm; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct snd_seq_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *_dev)
{
	struct snd_seq_device *dev = FUNC3(_dev);
	struct snd_emu8000 *hw;

	if (dev->driver_data == NULL)
		return 0; /* no synth was allocated actually */

	hw = dev->driver_data;
	if (hw->pcm)
		FUNC0(dev->card, hw->pcm);
	FUNC1(hw->emu);
	FUNC2(hw->memhdr);
	hw->emu = NULL;
	hw->memhdr = NULL;
	return 0;
}
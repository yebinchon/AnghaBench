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
struct TYPE_2__ {void* ioctl_compat; void* ioctl; } ;
struct snd_hwdep {int exclusive; struct snd_emux* private_data; TYPE_1__ ops; int /*<<< orphan*/  iface; int /*<<< orphan*/  name; } ;
struct snd_emux {int /*<<< orphan*/  card; struct snd_hwdep* hwdep; int /*<<< orphan*/  hwdep_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_EMUX_HWDEP_NAME ; 
 int /*<<< orphan*/  SNDRV_HWDEP_IFACE_EMUX_WAVETABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* snd_emux_hwdep_ioctl ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_hwdep**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct snd_emux *emu)
{
	struct snd_hwdep *hw;
	int err;

	if ((err = FUNC1(emu->card, SNDRV_EMUX_HWDEP_NAME, emu->hwdep_idx, &hw)) < 0)
		return err;
	emu->hwdep = hw;
	FUNC2(hw->name, SNDRV_EMUX_HWDEP_NAME);
	hw->iface = SNDRV_HWDEP_IFACE_EMUX_WAVETABLE;
	hw->ops.ioctl = snd_emux_hwdep_ioctl;
	/* The ioctl parameter types are compatible between 32- and
	 * 64-bit architectures, so use the same function. */
	hw->ops.ioctl_compat = snd_emux_hwdep_ioctl;
	hw->exclusive = 1;
	hw->private_data = emu;
	if ((err = FUNC0(emu->card)) < 0)
		return err;

	return 0;
}
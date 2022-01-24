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
struct viadev {int dummy; } ;
struct via82xx_modem {int /*<<< orphan*/  ac97; int /*<<< orphan*/  pci; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_2__ {struct viadev* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_LINE1_LEVEL ; 
 int /*<<< orphan*/  AC97_LINE1_RATE ; 
 int FUNC0 (struct viadev*,struct snd_pcm_substream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct via82xx_modem* FUNC7 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
				 struct snd_pcm_hw_params *hw_params)
{
	struct via82xx_modem *chip = FUNC7(substream);
	struct viadev *viadev = substream->runtime->private_data;
	int err;

	err = FUNC6(substream, FUNC1(hw_params));
	if (err < 0)
		return err;
	err = FUNC0(viadev, substream, chip->pci,
			      FUNC3(hw_params),
			      FUNC2(hw_params));
	if (err < 0)
		return err;

	FUNC5(chip->ac97, AC97_LINE1_RATE, FUNC4(hw_params));
	FUNC5(chip->ac97, AC97_LINE1_LEVEL, 0);

	return 0;
}
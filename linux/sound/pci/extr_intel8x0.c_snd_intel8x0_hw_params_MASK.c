#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct intel8x0 {scalar_t__ spdif_idx; } ;
struct ichdev {int pcm_open_flag; scalar_t__ ichd; TYPE_2__* pcm; } ;
struct TYPE_5__ {TYPE_1__* r; } ;
struct TYPE_4__ {int /*<<< orphan*/ * codec; int /*<<< orphan*/  slots; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_SPDIF ; 
 scalar_t__ ICHD_PCMOUT ; 
 struct ichdev* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct intel8x0* FUNC8 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream,
				  struct snd_pcm_hw_params *hw_params)
{
	struct intel8x0 *chip = FUNC8(substream);
	struct ichdev *ichdev = FUNC0(substream);
	int dbl = FUNC3(hw_params) > 48000;
	int err;

	err = FUNC7(substream, FUNC1(hw_params));
	if (err < 0)
		return err;
	if (ichdev->pcm_open_flag) {
		FUNC4(ichdev->pcm);
		ichdev->pcm_open_flag = 0;
	}
	err = FUNC5(ichdev->pcm, FUNC3(hw_params),
				FUNC2(hw_params),
				ichdev->pcm->r[dbl].slots);
	if (err >= 0) {
		ichdev->pcm_open_flag = 1;
		/* Force SPDIF setting */
		if (ichdev->ichd == ICHD_PCMOUT && chip->spdif_idx < 0)
			FUNC6(ichdev->pcm->r[0].codec[0], AC97_SPDIF,
					  FUNC3(hw_params));
	}
	return err;
}
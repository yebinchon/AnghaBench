#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct atiixp_dma {size_t ac97_pcm_type; int pcm_open_flag; int /*<<< orphan*/  buf_bytes; int /*<<< orphan*/  buf_addr; } ;
struct atiixp {struct ac97_pcm** pcms; } ;
struct ac97_pcm {TYPE_2__* r; } ;
struct TYPE_4__ {int /*<<< orphan*/  slots; } ;
struct TYPE_3__ {int /*<<< orphan*/  dma_addr; struct atiixp_dma* private_data; } ;

/* Variables and functions */
 int FUNC0 (struct atiixp*,struct atiixp_dma*,struct snd_pcm_substream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct ac97_pcm*) ; 
 int FUNC7 (struct ac97_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct atiixp* FUNC9 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream,
				    struct snd_pcm_hw_params *hw_params)
{
	struct atiixp *chip = FUNC9(substream);
	struct atiixp_dma *dma = substream->runtime->private_data;
	int err;

	err = FUNC8(substream, FUNC1(hw_params));
	if (err < 0)
		return err;
	dma->buf_addr = substream->runtime->dma_addr;
	dma->buf_bytes = FUNC1(hw_params);

	err = FUNC0(chip, dma, substream,
				       FUNC4(hw_params),
				       FUNC3(hw_params));
	if (err < 0)
		return err;

	if (dma->ac97_pcm_type >= 0) {
		struct ac97_pcm *pcm = chip->pcms[dma->ac97_pcm_type];
		/* PCM is bound to AC97 codec(s)
		 * set up the AC97 codecs
		 */
		if (dma->pcm_open_flag) {
			FUNC6(pcm);
			dma->pcm_open_flag = 0;
		}
		err = FUNC7(pcm, FUNC5(hw_params),
					FUNC2(hw_params),
					pcm->r[0].slots);
		if (err >= 0)
			dma->pcm_open_flag = 1;
	}

	return err;
}
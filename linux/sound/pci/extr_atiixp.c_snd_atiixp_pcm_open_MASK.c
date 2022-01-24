#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_6__ {int /*<<< orphan*/  formats; int /*<<< orphan*/  rates; } ;
struct snd_pcm_runtime {struct atiixp_dma* private_data; TYPE_3__ hw; } ;
struct atiixp_dma {int opened; int ac97_pcm_type; TYPE_2__* ops; struct snd_pcm_substream* substream; } ;
struct atiixp {int /*<<< orphan*/  reg_lock; TYPE_1__** pcms; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* enable_dma ) (struct atiixp*,int) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  rates; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_PCM_FMTBIT_IEC958_SUBFRAME_LE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_3__ snd_atiixp_pcm_hw ; 
 int FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_runtime*) ; 
 struct atiixp* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct atiixp*,int) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
			       struct atiixp_dma *dma, int pcm_type)
{
	struct atiixp *chip = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int err;

	if (FUNC0(!dma->ops || !dma->ops->enable_dma))
		return -EINVAL;

	if (dma->opened)
		return -EBUSY;
	dma->substream = substream;
	runtime->hw = snd_atiixp_pcm_hw;
	dma->ac97_pcm_type = pcm_type;
	if (pcm_type >= 0) {
		runtime->hw.rates = chip->pcms[pcm_type]->rates;
		FUNC2(runtime);
	} else {
		/* direct SPDIF */
		runtime->hw.formats = SNDRV_PCM_FMTBIT_IEC958_SUBFRAME_LE;
	}
	if ((err = FUNC1(runtime, SNDRV_PCM_HW_PARAM_PERIODS)) < 0)
		return err;
	runtime->private_data = dma;

	/* enable DMA bits */
	FUNC4(&chip->reg_lock);
	dma->ops->enable_dma(chip, 1);
	FUNC5(&chip->reg_lock);
	dma->opened = 1;

	return 0;
}
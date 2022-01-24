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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int dma_addr; int period_size; int buffer_size; int /*<<< orphan*/  rate; struct snd_ali_voice* private_data; } ;
struct snd_ali_voice {scalar_t__ number; int count; int eso; struct snd_ali_voice* extra; } ;
struct snd_ali {int /*<<< orphan*/  reg_lock; TYPE_1__* card; scalar_t__ spdif_support; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALI_GLOBAL_CONTROL ; 
 scalar_t__ ALI_PCM_IN_CHANNEL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ali*,int /*<<< orphan*/ ) ; 
 scalar_t__ ALI_SPDIF_IN_CHANNEL ; 
 scalar_t__ ALI_SPDIF_OUT_CHANNEL ; 
 int ALI_SPDIF_OUT_CH_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct snd_pcm_substream*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ali*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_ali*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_ali*,scalar_t__,unsigned int,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned int,int,int,unsigned int,unsigned int) ; 
 struct snd_ali* FUNC8 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream)
{
	struct snd_ali *codec = FUNC8(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_ali_voice *pvoice = runtime->private_data;
	struct snd_ali_voice *evoice = pvoice->extra;

	unsigned int LBA;
	unsigned int Delta;
	unsigned int ESO;
	unsigned int CTRL;
	unsigned int GVSEL;
	unsigned int PAN;
	unsigned int VOL;
	unsigned int EC;
	
	FUNC1(codec->card->dev, "playback_prepare ...\n");

	FUNC9(&codec->reg_lock);	
	
	/* set Delta (rate) value */
	Delta = FUNC4(runtime->rate, 0);

	if (pvoice->number == ALI_SPDIF_IN_CHANNEL || 
	    pvoice->number == ALI_PCM_IN_CHANNEL)
		FUNC5(codec, pvoice->number);
	else if (codec->spdif_support &&
		 (FUNC2(FUNC0(codec, ALI_GLOBAL_CONTROL)) &
		  ALI_SPDIF_OUT_CH_ENABLE)
		 && pvoice->number == ALI_SPDIF_OUT_CHANNEL) {
		FUNC6(codec, runtime->rate);
		Delta = 0x1000;
	}
	
	/* set Loop Back Address */
	LBA = runtime->dma_addr;

	/* set interrupt count size */
	pvoice->count = runtime->period_size;

	/* set target ESO for channel */
	pvoice->eso = runtime->buffer_size; 

	FUNC1(codec->card->dev, "playback_prepare: eso=%xh count=%xh\n",
		       pvoice->eso, pvoice->count);

	/* set ESO to capture first MIDLP interrupt */
	ESO = pvoice->eso -1;
	/* set ctrl mode */
	CTRL = FUNC3(substream);

	GVSEL = 1;
	PAN = 0;
	VOL = 0;
	EC = 0;
	FUNC1(codec->card->dev, "playback_prepare:\n");
	FUNC1(codec->card->dev,
		"ch=%d, Rate=%d Delta=%xh,GVSEL=%xh,PAN=%xh,CTRL=%xh\n",
		       pvoice->number,runtime->rate,Delta,GVSEL,PAN,CTRL);
	FUNC7(codec,
				 pvoice->number,
				 LBA,
				 0,	/* cso */
				 ESO,
				 Delta,
				 0,	/* alpha */
				 GVSEL,
				 PAN,
				 VOL,
				 CTRL,
				 EC);
	if (evoice) {
		evoice->count = pvoice->count;
		evoice->eso = pvoice->count << 1;
		ESO = evoice->eso - 1;
		FUNC7(codec,
					 evoice->number,
					 LBA,
					 0,	/* cso */
					 ESO,
					 Delta,
					 0,	/* alpha */
					 GVSEL,
					 0x7f,
					 0x3ff,
					 CTRL,
					 EC);
	}
	FUNC10(&codec->reg_lock);
	return 0;
}
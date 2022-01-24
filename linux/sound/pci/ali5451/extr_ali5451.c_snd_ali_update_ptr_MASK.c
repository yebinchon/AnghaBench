#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_ali_voice {scalar_t__ midi; scalar_t__ synth; scalar_t__ substream; scalar_t__ running; scalar_t__ pcm; } ;
struct TYPE_8__ {unsigned int aint; } ;
struct TYPE_7__ {scalar_t__ aint; } ;
struct snd_ali_channel_control {TYPE_4__ data; TYPE_3__ regs; } ;
struct TYPE_6__ {struct snd_ali_voice* voices; } ;
struct snd_ali {int /*<<< orphan*/  reg_lock; TYPE_2__ synth; TYPE_1__* card; struct snd_ali_channel_control chregs; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ALI_CSO_ALPHA_FMS ; 
 scalar_t__ ALI_CSPF ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ali*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ali*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_ali*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct snd_ali *codec, int channel)
{
	struct snd_ali_voice *pvoice;
	struct snd_ali_channel_control *pchregs;
	unsigned int old, mask;

	pchregs = &(codec->chregs);

	/* check if interrupt occurred for channel */
	old  = pchregs->data.aint;
	mask = 1U << (channel & 0x1f);

	if (!(old & mask))
		return;

	pvoice = &codec->synth.voices[channel];

	FUNC10(100);
	FUNC8(&codec->reg_lock);

	if (pvoice->pcm && pvoice->substream) {
		/* pcm interrupt */
		if (pvoice->running) {
			FUNC1(codec->card->dev,
				"update_ptr: cso=%4.4x cspf=%d.\n",
				FUNC3(FUNC0(codec, ALI_CSO_ALPHA_FMS + 2)),
				(FUNC2(FUNC0(codec, ALI_CSPF)) & mask) == mask);
			FUNC9(&codec->reg_lock);
			FUNC7(pvoice->substream);
			FUNC8(&codec->reg_lock);
		} else {
			FUNC6(codec, channel);
			FUNC5(codec, channel);
		}	
	} else if (codec->synth.voices[channel].synth) {
		/* synth interrupt */
	} else if (codec->synth.voices[channel].midi) {
		/* midi interrupt */
	} else {
		/* unknown interrupt */
		FUNC6(codec, channel);
		FUNC5(codec, channel);
	}
	FUNC9(&codec->reg_lock);
	FUNC4(mask,FUNC0(codec,pchregs->regs.aint));
	pchregs->data.aint = old & (~mask);
}
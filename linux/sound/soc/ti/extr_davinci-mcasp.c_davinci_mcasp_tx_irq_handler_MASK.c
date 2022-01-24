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
typedef  int u32 ;
struct snd_pcm_substream {int dummy; } ;
struct davinci_mcasp {int* irq_request; int /*<<< orphan*/  dev; struct snd_pcm_substream** substreams; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DAVINCI_MCASP_TXSTAT_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int XRERR ; 
 int XUNDRN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct davinci_mcasp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct davinci_mcasp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct davinci_mcasp *mcasp = (struct davinci_mcasp *)data;
	struct snd_pcm_substream *substream;
	u32 irq_mask = mcasp->irq_request[SNDRV_PCM_STREAM_PLAYBACK];
	u32 handled_mask = 0;
	u32 stat;

	stat = FUNC2(mcasp, DAVINCI_MCASP_TXSTAT_REG);
	if (stat & XUNDRN & irq_mask) {
		FUNC1(mcasp->dev, "Transmit buffer underflow\n");
		handled_mask |= XUNDRN;

		substream = mcasp->substreams[SNDRV_PCM_STREAM_PLAYBACK];
		if (substream)
			FUNC4(substream);
	}

	if (!handled_mask)
		FUNC1(mcasp->dev, "unhandled tx event. txstat: 0x%08x\n",
			 stat);

	if (stat & XRERR)
		handled_mask |= XRERR;

	/* Ack the handled event only */
	FUNC3(mcasp, DAVINCI_MCASP_TXSTAT_REG, handled_mask);

	return FUNC0(handled_mask);
}
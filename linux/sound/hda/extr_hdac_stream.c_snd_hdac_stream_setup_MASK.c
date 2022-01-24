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
typedef  unsigned int u32 ;
struct snd_pcm_runtime {int period_size; int rate; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct hdac_stream {unsigned int stream_tag; unsigned int bufsize; int period_wallclk; int /*<<< orphan*/  delay_negative_threshold; scalar_t__ fifo_size; TYPE_2__ bdl; scalar_t__ frags; scalar_t__ format_val; TYPE_1__* substream; struct hdac_bus* bus; } ;
struct TYPE_6__ {scalar_t__ addr; } ;
struct hdac_bus {TYPE_3__ posbuf; scalar_t__ use_posbuf; int /*<<< orphan*/  snoop; } ;
struct TYPE_4__ {struct snd_pcm_runtime* runtime; } ;

/* Variables and functions */
 unsigned int AZX_DPLBASE_ENABLE ; 
 int /*<<< orphan*/  DPLBASE ; 
 int /*<<< orphan*/  SD_BDLPL ; 
 int /*<<< orphan*/  SD_BDLPU ; 
 int /*<<< orphan*/  SD_CBL ; 
 int /*<<< orphan*/  SD_CTL ; 
 unsigned int SD_CTL_STREAM_TAG_MASK ; 
 unsigned int SD_CTL_STREAM_TAG_SHIFT ; 
 unsigned int SD_CTL_TRAFFIC_PRIO ; 
 int /*<<< orphan*/  SD_FIFOSIZE ; 
 int /*<<< orphan*/  SD_FORMAT ; 
 int /*<<< orphan*/  SD_INT_MASK ; 
 int /*<<< orphan*/  SD_LVI ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,int) ; 
 unsigned int FUNC1 (struct hdac_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdac_bus*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_stream*) ; 
 unsigned int FUNC4 (struct hdac_stream*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct hdac_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hdac_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hdac_stream*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct hdac_stream*,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int FUNC9 (scalar_t__) ; 

int FUNC10(struct hdac_stream *azx_dev)
{
	struct hdac_bus *bus = azx_dev->bus;
	struct snd_pcm_runtime *runtime;
	unsigned int val;

	if (azx_dev->substream)
		runtime = azx_dev->substream->runtime;
	else
		runtime = NULL;
	/* make sure the run bit is zero for SD */
	FUNC3(azx_dev);
	/* program the stream_tag */
	val = FUNC4(azx_dev, SD_CTL);
	val = (val & ~SD_CTL_STREAM_TAG_MASK) |
		(azx_dev->stream_tag << SD_CTL_STREAM_TAG_SHIFT);
	if (!bus->snoop)
		val |= SD_CTL_TRAFFIC_PRIO;
	FUNC7(azx_dev, SD_CTL, val);

	/* program the length of samples in cyclic buffer */
	FUNC7(azx_dev, SD_CBL, azx_dev->bufsize);

	/* program the stream format */
	/* this value needs to be the same as the one programmed */
	FUNC8(azx_dev, SD_FORMAT, azx_dev->format_val);

	/* program the stream LVI (last valid index) of the BDL */
	FUNC8(azx_dev, SD_LVI, azx_dev->frags - 1);

	/* program the BDL address */
	/* lower BDL address */
	FUNC7(azx_dev, SD_BDLPL, (u32)azx_dev->bdl.addr);
	/* upper BDL address */
	FUNC7(azx_dev, SD_BDLPU,
			       FUNC9(azx_dev->bdl.addr));

	/* enable the position buffer */
	if (bus->use_posbuf && bus->posbuf.addr) {
		if (!(FUNC1(bus, DPLBASE) & AZX_DPLBASE_ENABLE))
			FUNC2(bus, DPLBASE,
				(u32)bus->posbuf.addr | AZX_DPLBASE_ENABLE);
	}

	/* set the interrupt enable bits in the descriptor control register */
	FUNC6(azx_dev, SD_CTL, 0, SD_INT_MASK);

	azx_dev->fifo_size = FUNC5(azx_dev, SD_FIFOSIZE) + 1;

	/* when LPIB delay correction gives a small negative value,
	 * we ignore it; currently set the threshold statically to
	 * 64 frames
	 */
	if (runtime && runtime->period_size > 64)
		azx_dev->delay_negative_threshold =
			-FUNC0(runtime, 64);
	else
		azx_dev->delay_negative_threshold = 0;

	/* wallclk has 24Mhz clock source */
	if (runtime)
		azx_dev->period_wallclk = (((runtime->period_size * 24000) /
				    runtime->rate) * 1000);

	return 0;
}
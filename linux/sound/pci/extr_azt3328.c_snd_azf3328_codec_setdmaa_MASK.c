#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct codec_setup_io   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u32 ;
struct snd_azf3328_codec_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  running; } ;
struct snd_azf3328 {TYPE_1__* card; } ;
struct codec_setup_io {unsigned long dma_start_1; unsigned long dma_start_2; unsigned long dma_lengths; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDX_IO_CODEC_DMA_START_1 ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_azf3328_codec_data*,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void
FUNC5(struct snd_azf3328 *chip,
			  struct snd_azf3328_codec_data *codec,
			  unsigned long addr,
			  unsigned int period_bytes,
			  unsigned int buffer_bytes
)
{
	FUNC0(period_bytes & 1, "odd period length!?\n");
	FUNC0(buffer_bytes != 2 * period_bytes,
		 "missed our input expectations! %u vs. %u\n",
		 buffer_bytes, period_bytes);
	if (!codec->running) {
		/* AZF3328 uses a two buffer pointer DMA transfer approach */

		unsigned long flags;

		/* width 32bit (prevent overflow): */
		u32 area_length;
		struct codec_setup_io {
			u32 dma_start_1;
			u32 dma_start_2;
			u32 dma_lengths;
		} __attribute__((packed)) setup_io;

		area_length = buffer_bytes/2;

		setup_io.dma_start_1 = addr;
		setup_io.dma_start_2 = addr+area_length;

		FUNC1(chip->card->dev,
			"setdma: buffers %08x[%u] / %08x[%u], %u, %u\n",
				setup_io.dma_start_1, area_length,
				setup_io.dma_start_2, area_length,
				period_bytes, buffer_bytes);

		/* Hmm, are we really supposed to decrement this by 1??
		   Most definitely certainly not: configuring full length does
		   work properly (i.e. likely better), and BTW we
		   violated possibly differing frame sizes with this...

		area_length--; |* max. index *|
		*/

		/* build combined I/O buffer length word */
		setup_io.dma_lengths = (area_length << 16) | (area_length);

		FUNC3(codec->lock, flags);
		FUNC2(
			codec, IDX_IO_CODEC_DMA_START_1, &setup_io, 3
		);
		FUNC4(codec->lock, flags);
	}
}
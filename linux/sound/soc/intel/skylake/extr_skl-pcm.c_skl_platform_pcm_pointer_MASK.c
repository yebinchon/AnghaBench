#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {scalar_t__ stream; int /*<<< orphan*/  runtime; } ;
struct hdac_ext_stream {int dummy; } ;
struct hdac_bus {scalar_t__ remap_addr; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
struct TYPE_3__ {int index; unsigned int bufsize; } ;

/* Variables and functions */
 scalar_t__ AZX_REG_VS_SDXDPIB_XBASE ; 
 int AZX_REG_VS_SDXDPIB_XINTERVAL ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 struct hdac_bus* FUNC1 (struct snd_pcm_substream*) ; 
 struct hdac_ext_stream* FUNC2 (struct snd_pcm_substream*) ; 
 TYPE_1__* FUNC3 (struct hdac_ext_stream*) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 unsigned int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC7
			(struct snd_pcm_substream *substream)
{
	struct hdac_ext_stream *hstream = FUNC2(substream);
	struct hdac_bus *bus = FUNC1(substream);
	unsigned int pos;

	/*
	 * Use DPIB for Playback stream as the periodic DMA Position-in-
	 * Buffer Writes may be scheduled at the same time or later than
	 * the MSI and does not guarantee to reflect the Position of the
	 * last buffer that was transferred. Whereas DPIB register in
	 * HAD space reflects the actual data that is transferred.
	 * Use the position buffer for capture, as DPIB write gets
	 * completed earlier than the actual data written to the DDR.
	 *
	 * For capture stream following workaround is required to fix the
	 * incorrect position reporting.
	 *
	 * 1. Wait for 20us before reading the DMA position in buffer once
	 * the interrupt is generated for stream completion as update happens
	 * on the HDA frame boundary i.e. 20.833uSec.
	 * 2. Read DPIB register to flush the DMA position value. This dummy
	 * read is required to flush DMA position value.
	 * 3. Read the DMA Position-in-Buffer. This value now will be equal to
	 * or greater than period boundary.
	 */

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		pos = FUNC4(bus->remap_addr + AZX_REG_VS_SDXDPIB_XBASE +
				(AZX_REG_VS_SDXDPIB_XINTERVAL *
				FUNC3(hstream)->index));
	} else {
		FUNC6(20);
		FUNC4(bus->remap_addr +
				AZX_REG_VS_SDXDPIB_XBASE +
				(AZX_REG_VS_SDXDPIB_XINTERVAL *
				 FUNC3(hstream)->index));
		pos = FUNC5(FUNC3(hstream));
	}

	if (pos >= FUNC3(hstream)->bufsize)
		pos = 0;

	return FUNC0(substream->runtime, pos);
}
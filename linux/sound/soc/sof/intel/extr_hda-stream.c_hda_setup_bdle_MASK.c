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
struct sof_intel_dsp_bdl {void* ioc; void* size; void* addr_h; void* addr_l; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;
struct snd_dma_buffer {int dummy; } ;
struct hdac_stream {scalar_t__ frags; } ;
struct hdac_bus {scalar_t__ align_bdle_4k; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HDA_DSP_MAX_BDL_ENTRIES ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_dma_buffer*,int) ; 
 int FUNC5 (struct snd_dma_buffer*,int,int) ; 
 struct hdac_bus* FUNC6 (struct snd_sof_dev*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_sof_dev *sdev,
			  struct snd_dma_buffer *dmab,
			  struct hdac_stream *stream,
			  struct sof_intel_dsp_bdl **bdlp,
			  int offset, int size, int ioc)
{
	struct hdac_bus *bus = FUNC6(sdev);
	struct sof_intel_dsp_bdl *bdl = *bdlp;

	while (size > 0) {
		dma_addr_t addr;
		int chunk;

		if (stream->frags >= HDA_DSP_MAX_BDL_ENTRIES) {
			FUNC1(sdev->dev, "error: stream frags exceeded\n");
			return -EINVAL;
		}

		addr = FUNC4(dmab, offset);
		/* program BDL addr */
		bdl->addr_l = FUNC0(FUNC3(addr));
		bdl->addr_h = FUNC0(FUNC7(addr));
		/* program BDL size */
		chunk = FUNC5(dmab, offset, size);
		/* one BDLE should not cross 4K boundary */
		if (bus->align_bdle_4k) {
			u32 remain = 0x1000 - (offset & 0xfff);

			if (chunk > remain)
				chunk = remain;
		}
		bdl->size = FUNC0(chunk);
		/* only program IOC when the whole segment is processed */
		size -= chunk;
		bdl->ioc = (size || !ioc) ? 0 : FUNC0(0x01);
		bdl++;
		stream->frags++;
		offset += chunk;

		FUNC2(sdev->dev, "bdl, frags:%d, chunk size:0x%x;\n",
			 stream->frags, chunk);
	}

	*bdlp = bdl;
	return offset;
}
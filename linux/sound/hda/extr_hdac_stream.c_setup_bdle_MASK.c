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
struct snd_dma_buffer {int dummy; } ;
struct hdac_stream {scalar_t__ frags; } ;
struct hdac_bus {scalar_t__ align_bdle_4k; } ;
typedef  scalar_t__ dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 scalar_t__ AZX_MAX_BDL_ENTRIES ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct snd_dma_buffer*,int) ; 
 int FUNC2 (struct snd_dma_buffer*,int,int) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct hdac_bus *bus,
		      struct snd_dma_buffer *dmab,
		      struct hdac_stream *azx_dev, __le32 **bdlp,
		      int ofs, int size, int with_ioc)
{
	__le32 *bdl = *bdlp;

	while (size > 0) {
		dma_addr_t addr;
		int chunk;

		if (azx_dev->frags >= AZX_MAX_BDL_ENTRIES)
			return -EINVAL;

		addr = FUNC1(dmab, ofs);
		/* program the address field of the BDL entry */
		bdl[0] = FUNC0((u32)addr);
		bdl[1] = FUNC0(FUNC3(addr));
		/* program the size field of the BDL entry */
		chunk = FUNC2(dmab, ofs, size);
		/* one BDLE cannot cross 4K boundary on CTHDA chips */
		if (bus->align_bdle_4k) {
			u32 remain = 0x1000 - (ofs & 0xfff);

			if (chunk > remain)
				chunk = remain;
		}
		bdl[2] = FUNC0(chunk);
		/* program the IOC to enable interrupt
		 * only when the whole fragment is processed
		 */
		size -= chunk;
		bdl[3] = (size || !with_ioc) ? 0 : FUNC0(0x01);
		bdl += 4;
		azx_dev->frags++;
		ofs += chunk;
	}
	*bdlp = bdl;
	return ofs;
}
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
struct lola_stream {scalar_t__ frags; } ;
typedef  scalar_t__ dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ LOLA_MAX_BDL_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct snd_pcm_substream*,int) ; 
 int FUNC2 (struct snd_pcm_substream*,int,int) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
		      struct lola_stream *str, __le32 **bdlp,
		      int ofs, int size)
{
	__le32 *bdl = *bdlp;

	while (size > 0) {
		dma_addr_t addr;
		int chunk;

		if (str->frags >= LOLA_MAX_BDL_ENTRIES)
			return -EINVAL;

		addr = FUNC1(substream, ofs);
		/* program the address field of the BDL entry */
		bdl[0] = FUNC0((u32)addr);
		bdl[1] = FUNC0(FUNC3(addr));
		/* program the size field of the BDL entry */
		chunk = FUNC2(substream, ofs, size);
		bdl[2] = FUNC0(chunk);
		/* program the IOC to enable interrupt
		 * only when the whole fragment is processed
		 */
		size -= chunk;
		bdl[3] = size ? 0 : FUNC0(0x01);
		bdl += 4;
		str->frags++;
		ofs += chunk;
	}
	*bdlp = bdl;
	return ofs;
}
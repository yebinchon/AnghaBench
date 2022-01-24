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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ dma_bytes; struct snd_emu10k1_pcm* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_emu10k1_pcm {int start_addr; int /*<<< orphan*/ * memblk; } ;
struct snd_emu10k1_memblk {int mapped_page; } ;
struct snd_emu10k1 {scalar_t__ iommu_workaround; } ;

/* Variables and functions */
 scalar_t__ EMUPAGESIZE ; 
 int ENOMEM ; 
 int PAGE_SHIFT ; 
 size_t FUNC0 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/ * FUNC2 (struct snd_emu10k1*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu10k1*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct snd_emu10k1_pcm*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_pcm_substream*,size_t) ; 
 struct snd_emu10k1* FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
					  struct snd_pcm_hw_params *hw_params)
{
	struct snd_emu10k1 *emu = FUNC6(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_emu10k1_pcm *epcm = runtime->private_data;
	size_t alloc_size;
	int err;

	if ((err = FUNC4(epcm, FUNC1(hw_params))) < 0)
		return err;

	alloc_size = FUNC0(hw_params);
	if (emu->iommu_workaround)
		alloc_size += EMUPAGESIZE;
	err = FUNC5(substream, alloc_size);
	if (err < 0)
		return err;
	if (emu->iommu_workaround && runtime->dma_bytes >= EMUPAGESIZE)
		runtime->dma_bytes -= EMUPAGESIZE;
	if (err > 0) {	/* change */
		int mapped;
		if (epcm->memblk != NULL)
			FUNC3(emu, epcm->memblk);
		epcm->memblk = FUNC2(emu, substream);
		epcm->start_addr = 0;
		if (! epcm->memblk)
			return -ENOMEM;
		mapped = ((struct snd_emu10k1_memblk *)epcm->memblk)->mapped_page;
		if (mapped < 0)
			return -ENOMEM;
		epcm->start_addr = mapped << PAGE_SHIFT;
	}
	return 0;
}
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
struct au1xpsc_audio_dmadata {int msbits; void* ddma_chan; int /*<<< orphan*/  ddma_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSCR_CMD0_ALWAYS ; 
 int ENOMEM ; 
 int SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (struct au1xpsc_audio_dmadata*) ; 
 int /*<<< orphan*/  au1x_pcm_dmarx_cb ; 
 int /*<<< orphan*/  au1x_pcm_dmatx_cb ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

__attribute__((used)) static int FUNC6(struct au1xpsc_audio_dmadata *pcd,
				 int stype, int msbits)
{
	/* DMA only in 8/16/32 bit widths */
	if (msbits == 24)
		msbits = 32;

	/* check current config: correct bits and descriptors allocated? */
	if ((pcd->ddma_chan) && (msbits == pcd->msbits))
		goto out;	/* all ok! */

	FUNC0(pcd);

	if (stype == SNDRV_PCM_STREAM_CAPTURE)
		pcd->ddma_chan = FUNC1(pcd->ddma_id,
					DSCR_CMD0_ALWAYS,
					au1x_pcm_dmarx_cb, (void *)pcd);
	else
		pcd->ddma_chan = FUNC1(DSCR_CMD0_ALWAYS,
					pcd->ddma_id,
					au1x_pcm_dmatx_cb, (void *)pcd);

	if (!pcd->ddma_chan)
		return -ENOMEM;

	FUNC4(pcd->ddma_chan, msbits);
	FUNC3(pcd->ddma_chan, 2);

	pcd->msbits = msbits;

	FUNC5(pcd->ddma_chan);
	FUNC2(pcd->ddma_chan);

out:
	return 0;
}
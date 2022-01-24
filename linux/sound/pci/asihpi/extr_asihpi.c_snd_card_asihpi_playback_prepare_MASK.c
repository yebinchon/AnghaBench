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
struct snd_pcm_substream {int /*<<< orphan*/  number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_card_asihpi_pcm* private_data; } ;
struct snd_card_asihpi_pcm {scalar_t__ pcm_buf_elapsed_dma_ofs; scalar_t__ pcm_buf_dma_ofs; scalar_t__ pcm_buf_host_rw_ofs; int /*<<< orphan*/  h_stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *
					    substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_card_asihpi_pcm *dpcm = runtime->private_data;

	FUNC2("P%d prepare\n", substream->number);

	FUNC0(FUNC1(dpcm->h_stream));
	dpcm->pcm_buf_host_rw_ofs = 0;
	dpcm->pcm_buf_dma_ofs = 0;
	dpcm->pcm_buf_elapsed_dma_ofs = 0;
	return 0;
}
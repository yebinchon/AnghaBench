#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_pcm_runtime {TYPE_1__* dai_link; } ;
struct snd_compr_stream {int /*<<< orphan*/  direction; struct snd_soc_pcm_runtime* private_data; struct snd_compr_runtime* runtime; } ;
struct snd_compr_runtime {struct q6asm_dai_rtd* private_data; } ;
struct q6asm_dai_rtd {int /*<<< orphan*/ * audio_client; int /*<<< orphan*/  dma_buffer; scalar_t__ state; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (struct q6asm_dai_rtd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_compr_stream *stream)
{
	struct snd_compr_runtime *runtime = stream->runtime;
	struct q6asm_dai_rtd *prtd = runtime->private_data;
	struct snd_soc_pcm_runtime *rtd = stream->private_data;

	if (prtd->audio_client) {
		if (prtd->state)
			FUNC2(prtd->audio_client, CMD_CLOSE);

		FUNC5(&prtd->dma_buffer);
		FUNC3(stream->direction,
					   prtd->audio_client);
		FUNC1(prtd->audio_client);
		prtd->audio_client = NULL;
	}
	FUNC4(rtd->dai_link->id, stream->direction);
	FUNC0(prtd);

	return 0;
}
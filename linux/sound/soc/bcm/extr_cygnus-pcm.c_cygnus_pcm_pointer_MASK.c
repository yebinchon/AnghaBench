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
struct snd_pcm_substream {scalar_t__ stream; int /*<<< orphan*/  runtime; } ;
struct ringbuf_regs {scalar_t__ baseaddr; scalar_t__ wraddr; scalar_t__ rdaddr; } ;
struct cygnus_aio_port {TYPE_1__* cygaud; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
struct TYPE_2__ {scalar_t__ audio; } ;

/* Variables and functions */
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 struct cygnus_aio_port* FUNC1 (struct snd_pcm_substream*) ; 
 struct ringbuf_regs* FUNC2 (struct snd_pcm_substream*) ; 
 unsigned int FUNC3 (scalar_t__) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC4(struct snd_pcm_substream *substream)
{
	struct cygnus_aio_port *aio;
	unsigned int res = 0, cur = 0, base = 0;
	struct ringbuf_regs *p_rbuf = NULL;

	aio = FUNC1(substream);

	/*
	 * Get the offset of the current read (for playack) or write
	 * index (for capture).  Report this value back to the asoc framework.
	 */
	p_rbuf = FUNC2(substream);
	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
		cur = FUNC3(aio->cygaud->audio + p_rbuf->rdaddr);
	else
		cur = FUNC3(aio->cygaud->audio + p_rbuf->wraddr);

	base = FUNC3(aio->cygaud->audio + p_rbuf->baseaddr);

	/*
	 * Mask off the MSB of the rdaddr,wraddr and baseaddr
	 * since MSB is not part of the address
	 */
	res = (cur & 0x7fffffff) - (base & 0x7fffffff);

	return FUNC0(substream->runtime, res);
}
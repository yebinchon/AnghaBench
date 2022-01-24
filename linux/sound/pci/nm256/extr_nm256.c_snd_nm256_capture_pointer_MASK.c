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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct nm256_stream {unsigned long dma_size; scalar_t__ buf; } ;
struct nm256 {int dummy; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
struct TYPE_2__ {struct nm256_stream* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  NM_RBUFFER_CURRP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned long) ; 
 scalar_t__ FUNC1 (int) ; 
 unsigned long FUNC2 (struct nm256*,int /*<<< orphan*/ ) ; 
 struct nm256* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static snd_pcm_uframes_t
FUNC4(struct snd_pcm_substream *substream)
{
	struct nm256 *chip = FUNC3(substream);
	struct nm256_stream *s = substream->runtime->private_data;
	unsigned long curp;

	if (FUNC1(!s))
		return 0;
	curp = FUNC2(chip, NM_RBUFFER_CURRP) - (unsigned long)s->buf;
	curp %= s->dma_size;	
	return FUNC0(substream->runtime, curp);
}
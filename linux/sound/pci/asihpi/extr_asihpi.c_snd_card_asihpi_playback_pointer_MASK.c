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
struct snd_pcm_runtime {struct snd_card_asihpi_pcm* private_data; } ;
struct snd_card_asihpi_pcm {int pcm_buf_dma_ofs; int buffer_bytes; } ;
typedef  scalar_t__ snd_pcm_uframes_t ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_pcm_runtime*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned long) ; 

__attribute__((used)) static snd_pcm_uframes_t
FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_card_asihpi_pcm *dpcm = runtime->private_data;
	snd_pcm_uframes_t ptr;
	char name[16];
	FUNC1(substream, name, sizeof(name));

	ptr = FUNC0(runtime, dpcm->pcm_buf_dma_ofs  % dpcm->buffer_bytes);
	FUNC2("%s, pointer=%ld\n", name, (unsigned long)ptr);
	return ptr;
}
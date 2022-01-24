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
struct snd_pcm_runtime {unsigned long buffer_size; struct ct_atc_pcm* private_data; } ;
struct ct_atc_pcm {int dummy; } ;
struct ct_atc {unsigned long (* pcm_playback_position ) (struct ct_atc*,struct ct_atc_pcm*) ;} ;
typedef  unsigned long snd_pcm_uframes_t ;

/* Variables and functions */
 unsigned long FUNC0 (struct snd_pcm_runtime*,unsigned long) ; 
 struct ct_atc* FUNC1 (struct snd_pcm_substream*) ; 
 unsigned long FUNC2 (struct ct_atc*,struct ct_atc_pcm*) ; 

__attribute__((used)) static snd_pcm_uframes_t
FUNC3(struct snd_pcm_substream *substream)
{
	unsigned long position;
	struct ct_atc *atc = FUNC1(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct ct_atc_pcm *apcm = runtime->private_data;

	/* Read out playback position */
	position = atc->pcm_playback_position(atc, apcm);
	position = FUNC0(runtime, position);
	if (position >= runtime->buffer_size)
		position = 0;
	return position;
}
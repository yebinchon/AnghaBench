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
struct snd_pcm {int dummy; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct snd_card*,char const*,int,int,int,int,struct snd_pcm**) ; 

int FUNC1(struct snd_card *card, const char *id, int device,
	int playback_count, int capture_count,
	struct snd_pcm **rpcm)
{
	return FUNC0(card, id, device, playback_count, capture_count,
			true, rpcm);
}
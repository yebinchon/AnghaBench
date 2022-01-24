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
struct snd_pcm_substream {int dummy; } ;
struct amdtp_stream {int /*<<< orphan*/  pcm; } ;

/* Variables and functions */
 struct snd_pcm_substream* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 

void FUNC2(struct amdtp_stream *s)
{
	struct snd_pcm_substream *pcm;

	pcm = FUNC0(s->pcm);
	if (pcm)
		FUNC1(pcm);
}
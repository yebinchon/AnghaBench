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
typedef  int /*<<< orphan*/  snd_pcm_sframes_t ;

/* Variables and functions */
 int FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
			 snd_pcm_sframes_t *delay)
{
	int err;
	snd_pcm_sframes_t n = 0;

	FUNC2(substream);
	err = FUNC0(substream);
	if (!err)
		n = FUNC1(substream);
	FUNC3(substream);
	if (!err)
		*delay = n;
	return err;
}
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
typedef  int /*<<< orphan*/  snd_pcm_state_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_pcm_action_stop ; 

int FUNC1(struct snd_pcm_substream *substream, snd_pcm_state_t state)
{
	return FUNC0(&snd_pcm_action_stop, substream, state);
}
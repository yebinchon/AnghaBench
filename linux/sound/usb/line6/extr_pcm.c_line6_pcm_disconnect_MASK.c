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
struct snd_line6_pcm {int /*<<< orphan*/  in; int /*<<< orphan*/  out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_line6_pcm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_line6_pcm*,int /*<<< orphan*/ *) ; 

void FUNC2(struct snd_line6_pcm *line6pcm)
{
	FUNC0(line6pcm, &line6pcm->out);
	FUNC0(line6pcm, &line6pcm->in);
	FUNC1(line6pcm, &line6pcm->out);
	FUNC1(line6pcm, &line6pcm->in);
}
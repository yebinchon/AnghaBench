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
struct snd_line6_pcm {int /*<<< orphan*/  state_mutex; } ;
struct line6_pcm_stream {int dummy; } ;

/* Variables and functions */
 struct line6_pcm_stream* FUNC0 (struct snd_line6_pcm*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_line6_pcm*,struct line6_pcm_stream*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_line6_pcm*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct snd_line6_pcm *line6pcm, int type)
{
	struct line6_pcm_stream *pstr;
	int dir;

	FUNC3(&line6pcm->state_mutex);
	for (dir = 0; dir < 2; dir++)
		FUNC2(line6pcm, dir, type);
	for (dir = 0; dir < 2; dir++) {
		pstr = FUNC0(line6pcm, dir);
		FUNC1(line6pcm, pstr, type);
	}
	FUNC4(&line6pcm->state_mutex);
}
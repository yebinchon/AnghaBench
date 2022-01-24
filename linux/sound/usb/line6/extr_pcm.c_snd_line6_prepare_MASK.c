#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {int /*<<< orphan*/  stream; } ;
struct TYPE_4__ {scalar_t__ bytes; scalar_t__ pos_done; scalar_t__ count; } ;
struct TYPE_3__ {scalar_t__ bytes; scalar_t__ pos_done; scalar_t__ pos; scalar_t__ count; } ;
struct snd_line6_pcm {int /*<<< orphan*/  state_mutex; TYPE_2__ in; TYPE_1__ out; int /*<<< orphan*/  flags; } ;
struct line6_pcm_stream {int /*<<< orphan*/  running; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINE6_FLAG_PREPARED ; 
 struct line6_pcm_stream* FUNC0 (struct snd_line6_pcm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_line6_pcm*,struct line6_pcm_stream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct snd_line6_pcm* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct snd_pcm_substream *substream)
{
	struct snd_line6_pcm *line6pcm = FUNC4(substream);
	struct line6_pcm_stream *pstr = FUNC0(line6pcm, substream->stream);

	FUNC2(&line6pcm->state_mutex);
	if (!pstr->running)
		FUNC1(line6pcm, pstr);

	if (!FUNC5(LINE6_FLAG_PREPARED, &line6pcm->flags)) {
		line6pcm->out.count = 0;
		line6pcm->out.pos = 0;
		line6pcm->out.pos_done = 0;
		line6pcm->out.bytes = 0;
		line6pcm->in.count = 0;
		line6pcm->in.pos_done = 0;
		line6pcm->in.bytes = 0;
	}

	FUNC3(&line6pcm->state_mutex);
	return 0;
}
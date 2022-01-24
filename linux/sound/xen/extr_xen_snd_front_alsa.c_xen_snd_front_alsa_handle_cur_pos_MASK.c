#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct xen_snd_front_pcm_stream_info {int be_cur_frame; int out_frames; int /*<<< orphan*/  hw_ptr; } ;
struct TYPE_4__ {struct snd_pcm_substream* substream; } ;
struct TYPE_5__ {TYPE_1__ evt; } ;
struct xen_snd_front_evtchnl {TYPE_2__ u; } ;
struct snd_pcm_substream {TYPE_3__* runtime; } ;
typedef  int snd_pcm_uframes_t ;
struct TYPE_6__ {int buffer_size; int period_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_substream*) ; 
 struct xen_snd_front_pcm_stream_info* FUNC4 (struct snd_pcm_substream*) ; 

void FUNC5(struct xen_snd_front_evtchnl *evtchnl,
				       u64 pos_bytes)
{
	struct snd_pcm_substream *substream = evtchnl->u.evt.substream;
	struct xen_snd_front_pcm_stream_info *stream = FUNC4(substream);
	snd_pcm_uframes_t delta, new_hw_ptr, cur_frame;

	cur_frame = FUNC2(substream->runtime, pos_bytes);

	delta = cur_frame - stream->be_cur_frame;
	stream->be_cur_frame = cur_frame;

	new_hw_ptr = (snd_pcm_uframes_t)FUNC0(&stream->hw_ptr);
	new_hw_ptr = (new_hw_ptr + delta) % substream->runtime->buffer_size;
	FUNC1(&stream->hw_ptr, (int)new_hw_ptr);

	stream->out_frames += delta;
	if (stream->out_frames > substream->runtime->period_size) {
		stream->out_frames %= substream->runtime->period_size;
		FUNC3(substream);
	}
}
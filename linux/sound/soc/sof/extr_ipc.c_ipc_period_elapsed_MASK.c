#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sof_ipc_stream_posn {int /*<<< orphan*/  wallclock; int /*<<< orphan*/  dai_posn; int /*<<< orphan*/  host_posn; } ;
struct snd_sof_pcm_stream {TYPE_2__* substream; int /*<<< orphan*/  posn; } ;
struct snd_sof_pcm {struct snd_sof_pcm_stream* stream; } ;
struct snd_sof_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  posn ;
struct TYPE_5__ {TYPE_1__* runtime; } ;
struct TYPE_4__ {int /*<<< orphan*/  no_period_wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sof_ipc_stream_posn*,int) ; 
 struct snd_sof_pcm* FUNC3 (struct snd_sof_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_sof_dev*,TYPE_2__*,struct sof_ipc_stream_posn*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(struct snd_sof_dev *sdev, u32 msg_id)
{
	struct snd_sof_pcm_stream *stream;
	struct sof_ipc_stream_posn posn;
	struct snd_sof_pcm *spcm;
	int direction;

	spcm = FUNC3(sdev, msg_id, &direction);
	if (!spcm) {
		FUNC1(sdev->dev,
			"error: period elapsed for unknown stream, msg_id %d\n",
			msg_id);
		return;
	}

	stream = &spcm->stream[direction];
	FUNC4(sdev, stream->substream, &posn, sizeof(posn));

	FUNC0(sdev->dev, "posn : host 0x%llx dai 0x%llx wall 0x%llx\n",
		posn.host_posn, posn.dai_posn, posn.wallclock);

	FUNC2(&stream->posn, &posn, sizeof(posn));

	/* only inform ALSA for period_wakeup mode */
	if (!stream->substream->runtime->no_period_wakeup)
		FUNC5(stream->substream);
}
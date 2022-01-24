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
struct snd_rawmidi_substream {scalar_t__ use_count; int opened; int append; size_t stream; int /*<<< orphan*/  pid; scalar_t__ active_sensing; TYPE_1__* ops; } ;
struct snd_rawmidi {TYPE_2__* streams; } ;
struct TYPE_4__ {int /*<<< orphan*/  substream_opened; } ;
struct TYPE_3__ {int (* open ) (struct snd_rawmidi_substream*) ;} ;

/* Variables and functions */
 int SNDRV_RAWMIDI_LFLG_APPEND ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_rawmidi_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_rawmidi_substream*) ; 
 int FUNC3 (struct snd_rawmidi_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_rawmidi *rmidi,
			  struct snd_rawmidi_substream *substream,
			  int mode)
{
	int err;

	if (substream->use_count == 0) {
		err = FUNC1(substream);
		if (err < 0)
			return err;
		err = substream->ops->open(substream);
		if (err < 0) {
			FUNC2(substream);
			return err;
		}
		substream->opened = 1;
		substream->active_sensing = 0;
		if (mode & SNDRV_RAWMIDI_LFLG_APPEND)
			substream->append = 1;
		substream->pid = FUNC0(FUNC4(current));
		rmidi->streams[substream->stream].substream_opened++;
	}
	substream->use_count++;
	return 0;
}
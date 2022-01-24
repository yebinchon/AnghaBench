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
struct TYPE_4__ {int code; int /*<<< orphan*/  parm1; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  buf; int /*<<< orphan*/  dev; } ;
union evrec {int /*<<< orphan*/ * c; TYPE_2__ s; TYPE_1__ x; } ;
struct snd_seq_event {int dummy; } ;
struct seq_oss_devinfo {int /*<<< orphan*/  seq_mode; int /*<<< orphan*/  file_mode; } ;

/* Variables and functions */
 int EINVAL ; 
#define  EV_CHN_COMMON 136 
#define  EV_CHN_VOICE 135 
#define  EV_SEQ_LOCAL 134 
#define  EV_SYSEX 133 
#define  EV_TIMING 132 
#define  SEQ_ECHO 131 
#define  SEQ_EXTENDED 130 
#define  SEQ_MIDIPUTC 129 
#define  SEQ_PRIVATE 128 
 int SNDRV_SEQ_OSS_FILE_WRITE ; 
 int /*<<< orphan*/  SNDRV_SEQ_OSS_MODE_MUSIC ; 
 int FUNC0 (struct seq_oss_devinfo*,union evrec*,struct snd_seq_event*) ; 
 int FUNC1 (struct seq_oss_devinfo*,union evrec*,struct snd_seq_event*) ; 
 int FUNC2 (struct seq_oss_devinfo*,union evrec*,struct snd_seq_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct seq_oss_devinfo*,union evrec*,struct snd_seq_event*) ; 
 int FUNC5 (struct seq_oss_devinfo*,union evrec*,struct snd_seq_event*) ; 
 int FUNC6 (struct seq_oss_devinfo*,union evrec*,struct snd_seq_event*) ; 
 int FUNC7 (struct seq_oss_devinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_oss_devinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct seq_oss_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_seq_event*) ; 
 int FUNC10 (struct seq_oss_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct snd_seq_event*) ; 
 int FUNC11 (struct seq_oss_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_seq_event*) ; 
 int FUNC12 (struct seq_oss_devinfo*,union evrec*,struct snd_seq_event*) ; 

int
FUNC13(struct seq_oss_devinfo *dp, union evrec *q, struct snd_seq_event *ev)
{
	switch (q->s.code) {
	case SEQ_EXTENDED:
		return FUNC2(dp, q, ev);

	case EV_CHN_VOICE:
		return FUNC1(dp, q, ev);

	case EV_CHN_COMMON:
		return FUNC0(dp, q, ev);

	case EV_TIMING:
		return FUNC12(dp, q, ev);

	case EV_SEQ_LOCAL:
		return FUNC4(dp, q, ev);

	case EV_SYSEX:
		return FUNC11(dp, q->x.dev, q->x.buf, ev);

	case SEQ_MIDIPUTC:
		if (dp->seq_mode == SNDRV_SEQ_OSS_MODE_MUSIC)
			return -EINVAL;
		/* put a midi byte */
		if (! FUNC3(dp->file_mode))
			break;
		if (FUNC8(dp, q->s.dev, SNDRV_SEQ_OSS_FILE_WRITE))
			break;
		if (FUNC7(dp, q->s.dev) & SNDRV_SEQ_OSS_FILE_WRITE)
			return FUNC9(dp, q->s.dev, q->s.parm1, ev);
		break;

	case SEQ_ECHO:
		if (dp->seq_mode == SNDRV_SEQ_OSS_MODE_MUSIC)
			return -EINVAL;
		return FUNC6(dp, q, ev);

	case SEQ_PRIVATE:
		if (dp->seq_mode == SNDRV_SEQ_OSS_MODE_MUSIC)
			return -EINVAL;
		return FUNC10(dp, q->c[1], q->c, ev);

	default:
		if (dp->seq_mode == SNDRV_SEQ_OSS_MODE_MUSIC)
			return -EINVAL;
		return FUNC5(dp, q, ev);
	}
	return -EINVAL;
}
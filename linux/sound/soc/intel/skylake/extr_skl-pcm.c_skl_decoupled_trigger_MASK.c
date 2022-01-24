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
struct hdac_stream {int /*<<< orphan*/  prepared; } ;
struct hdac_ext_stream {int dummy; } ;
struct hdac_bus {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPIPE ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 struct hdac_bus* FUNC0 (struct snd_pcm_substream*) ; 
 struct hdac_ext_stream* FUNC1 (struct snd_pcm_substream*) ; 
 struct hdac_stream* FUNC2 (struct hdac_ext_stream*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_stream*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hdac_stream*) ; 
 int /*<<< orphan*/  FUNC5 (struct hdac_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
		int cmd)
{
	struct hdac_bus *bus = FUNC0(substream);
	struct hdac_ext_stream *stream;
	int start;
	unsigned long cookie;
	struct hdac_stream *hstr;

	stream = FUNC1(substream);
	hstr = FUNC2(stream);

	if (!hstr->prepared)
		return -EPIPE;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
	case SNDRV_PCM_TRIGGER_RESUME:
		start = 1;
		break;

	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
	case SNDRV_PCM_TRIGGER_SUSPEND:
	case SNDRV_PCM_TRIGGER_STOP:
		start = 0;
		break;

	default:
		return -EINVAL;
	}

	FUNC6(&bus->reg_lock, cookie);

	if (start) {
		FUNC3(FUNC2(stream), true);
		FUNC5(hstr, 0);
	} else {
		FUNC4(FUNC2(stream));
	}

	FUNC7(&bus->reg_lock, cookie);

	return 0;
}
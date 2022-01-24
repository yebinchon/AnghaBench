#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {int dummy; } ;
struct cmipci {int* opened; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  reg_lock; TYPE_1__* channel; } ;
struct TYPE_2__ {scalar_t__ is_dac; struct snd_pcm_substream* substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_ENDBDAC ; 
 int CM_OPEN_CH_MASK ; 
 int CM_OPEN_DAC ; 
 int /*<<< orphan*/  CM_REG_MISC_CTRL ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cmipci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct cmipci *cm, int mode, struct snd_pcm_substream *subs)
{
	int ch = mode & CM_OPEN_CH_MASK;

	/* FIXME: a file should wait until the device becomes free
	 * when it's opened on blocking mode.  however, since the current
	 * pcm framework doesn't pass file pointer before actually opened,
	 * we can't know whether blocking mode or not in open callback..
	 */
	FUNC0(&cm->open_mutex);
	if (cm->opened[ch]) {
		FUNC1(&cm->open_mutex);
		return -EBUSY;
	}
	cm->opened[ch] = mode;
	cm->channel[ch].substream = subs;
	if (! (mode & CM_OPEN_DAC)) {
		/* disable dual DAC mode */
		cm->channel[ch].is_dac = 0;
		FUNC3(&cm->reg_lock);
		FUNC2(cm, CM_REG_MISC_CTRL, CM_ENDBDAC);
		FUNC4(&cm->reg_lock);
	}
	FUNC1(&cm->open_mutex);
	return 0;
}
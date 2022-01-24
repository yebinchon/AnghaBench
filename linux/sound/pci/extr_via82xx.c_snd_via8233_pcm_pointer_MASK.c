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
struct viadev {unsigned int tbl_entries; int in_interrupt; unsigned int lastpos; unsigned int hwptr_done; scalar_t__ fragsize; } ;
struct via82xx {scalar_t__ revision; int /*<<< orphan*/  reg_lock; TYPE_1__* card; } ;
struct snd_pcm_substream {TYPE_2__* runtime; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;
struct TYPE_4__ {struct viadev* private_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OFFSET_CURR_COUNT ; 
 int /*<<< orphan*/  OFFSET_STATUS ; 
 int /*<<< orphan*/  SNDRV_PCM_TRIGGER_START ; 
 int /*<<< orphan*/  FUNC0 (struct viadev*,int /*<<< orphan*/ ) ; 
 int VIA_REG_STAT_ACTIVE ; 
 int VIA_REG_STAT_EOL ; 
 int VIA_REG_STAT_FLAG ; 
 scalar_t__ VIA_REV_8251 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,unsigned int) ; 
 unsigned int FUNC2 (struct via82xx*,struct viadev*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 struct via82xx* FUNC7 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC11(struct snd_pcm_substream *substream)
{
	struct via82xx *chip = FUNC7(substream);
	struct viadev *viadev = substream->runtime->private_data;
	unsigned int idx, count, res;
	int status;
	
	if (FUNC6(!viadev->tbl_entries))
		return 0;

	FUNC9(&chip->reg_lock);
	count = FUNC5(FUNC0(viadev, OFFSET_CURR_COUNT));
	status = viadev->in_interrupt;
	if (!status)
		status = FUNC4(FUNC0(viadev, OFFSET_STATUS));

	/* An apparent bug in the 8251 is worked around by sending a 
	 * REG_CTRL_START. */
	if (chip->revision == VIA_REV_8251 && (status & VIA_REG_STAT_EOL))
		FUNC8(substream, SNDRV_PCM_TRIGGER_START);

	if (!(status & VIA_REG_STAT_ACTIVE)) {
		res = 0;
		goto unlock;
	}
	if (count & 0xffffff) {
		idx = count >> 24;
		if (idx >= viadev->tbl_entries) {
#ifdef POINTER_DEBUG
			dev_dbg(chip->card->dev,
				"fail: invalid idx = %i/%i\n", idx,
			       viadev->tbl_entries);
#endif
			res = viadev->lastpos;
		} else {
			count &= 0xffffff;
			res = FUNC2(chip, viadev, idx, count);
		}
	} else {
		res = viadev->hwptr_done;
		if (!viadev->in_interrupt) {
			if (status & VIA_REG_STAT_EOL) {
				res = 0;
			} else
				if (status & VIA_REG_STAT_FLAG) {
					res += viadev->fragsize;
				}
		}
	}			    
unlock:
	viadev->lastpos = res;
	FUNC10(&chip->reg_lock);

	return FUNC1(substream->runtime, res);
}
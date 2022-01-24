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
struct snd_virmidi_dev {int seq_mode; int /*<<< orphan*/  client; } ;
struct snd_rawmidi {struct snd_virmidi_dev* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_VIRMIDI_SEQ_ATTACH 129 
#define  SNDRV_VIRMIDI_SEQ_DISPATCH 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct snd_virmidi_dev*) ; 

__attribute__((used)) static int FUNC2(struct snd_rawmidi *rmidi)
{
	struct snd_virmidi_dev *rdev = rmidi->private_data;
	int err;

	switch (rdev->seq_mode) {
	case SNDRV_VIRMIDI_SEQ_DISPATCH:
		err = FUNC1(rdev);
		if (err < 0)
			return err;
		break;
	case SNDRV_VIRMIDI_SEQ_ATTACH:
		if (rdev->client == 0)
			return -EINVAL;
		/* should check presence of port more strictly.. */
		break;
	default:
		FUNC0("ALSA: seq_virmidi: seq_mode is not set: %d\n", rdev->seq_mode);
		return -EINVAL;
	}
	return 0;
}
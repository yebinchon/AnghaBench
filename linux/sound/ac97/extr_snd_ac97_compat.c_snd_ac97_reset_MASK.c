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
struct snd_ac97 {int /*<<< orphan*/  private_data; } ;
struct ac97_controller {int dummy; } ;
struct ac97_codec_device {int /*<<< orphan*/  vendor_id; int /*<<< orphan*/  num; struct ac97_controller* ac97_ctrl; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*) ; 
 unsigned int FUNC3 (struct ac97_controller*,int /*<<< orphan*/ ) ; 
 struct ac97_codec_device* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct snd_ac97 *ac97, bool try_warm, unsigned int id,
	unsigned int id_mask)
{
	struct ac97_codec_device *adev = FUNC4(ac97->private_data);
	struct ac97_controller *actrl = adev->ac97_ctrl;
	unsigned int scanned;

	if (try_warm) {
		FUNC2(ac97);
		scanned = FUNC3(actrl, adev->num);
		if (FUNC0(scanned, adev->vendor_id, id_mask))
			return 1;
	}

	FUNC1(ac97);
	FUNC2(ac97);
	scanned = FUNC3(actrl, adev->num);
	if (FUNC0(scanned, adev->vendor_id, id_mask))
		return 0;

	return -ENODEV;
}
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
struct snd_hwdep {int ossreg; scalar_t__ oss_type; int /*<<< orphan*/  dev; scalar_t__ device; int /*<<< orphan*/  list; struct snd_card* card; } ;
struct snd_device {struct snd_hwdep* device_data; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  SNDRV_DEVICE_TYPE_HWDEP ; 
 scalar_t__ SNDRV_OSS_DEVICE_TYPE_DMFM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  register_mutex ; 
 int /*<<< orphan*/  snd_hwdep_devices ; 
 int /*<<< orphan*/  snd_hwdep_f_ops ; 
 scalar_t__ FUNC6 (struct snd_card*,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct snd_card*,scalar_t__,int /*<<< orphan*/ *,struct snd_hwdep*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,struct snd_card*,scalar_t__,int /*<<< orphan*/ *,struct snd_hwdep*) ; 

__attribute__((used)) static int FUNC9(struct snd_device *device)
{
	struct snd_hwdep *hwdep = device->device_data;
	struct snd_card *card = hwdep->card;
	int err;

	FUNC4(&register_mutex);
	if (FUNC6(card, hwdep->device)) {
		FUNC5(&register_mutex);
		return -EBUSY;
	}
	FUNC2(&hwdep->list, &snd_hwdep_devices);
	err = FUNC7(SNDRV_DEVICE_TYPE_HWDEP,
				  hwdep->card, hwdep->device,
				  &snd_hwdep_f_ops, hwdep, &hwdep->dev);
	if (err < 0) {
		FUNC0(&hwdep->dev, "unable to register\n");
		FUNC3(&hwdep->list);
		FUNC5(&register_mutex);
		return err;
	}

#ifdef CONFIG_SND_OSSEMUL
	hwdep->ossreg = 0;
	if (hwdep->oss_type >= 0) {
		if (hwdep->oss_type == SNDRV_OSS_DEVICE_TYPE_DMFM &&
		    hwdep->device)
			dev_warn(&hwdep->dev,
				 "only hwdep device 0 can be registered as OSS direct FM device!\n");
		else if (snd_register_oss_device(hwdep->oss_type,
						 card, hwdep->device,
						 &snd_hwdep_f_ops, hwdep) < 0)
			dev_warn(&hwdep->dev,
				 "unable to register OSS compatibility device\n");
		else
			hwdep->ossreg = 1;
	}
#endif
	FUNC5(&register_mutex);
	return 0;
}
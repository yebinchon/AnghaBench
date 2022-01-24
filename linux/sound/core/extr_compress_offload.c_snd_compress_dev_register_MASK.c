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
struct snd_device {struct snd_compr* device_data; } ;
struct snd_compr {int /*<<< orphan*/  dev; int /*<<< orphan*/  device; int /*<<< orphan*/  card; int /*<<< orphan*/  direction; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBADFD ; 
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_DEVICE_TYPE_COMPRESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  snd_compr_file_ops ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct snd_compr*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_device *device)
{
	int ret = -EINVAL;
	struct snd_compr *compr;

	if (FUNC2(!device || !device->device_data))
		return -EBADFD;
	compr = device->device_data;

	FUNC0("reg device %s, direction %d\n", compr->name,
			compr->direction);
	/* register compressed device */
	ret = FUNC3(SNDRV_DEVICE_TYPE_COMPRESS,
				  compr->card, compr->device,
				  &snd_compr_file_ops, compr, &compr->dev);
	if (ret < 0) {
		FUNC1("snd_register_device failed %d\n", ret);
		return ret;
	}
	return ret;

}
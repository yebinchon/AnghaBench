#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; } ;
struct snd_ac97 {TYPE_1__ dev; int /*<<< orphan*/ * bus; struct ac97_codec_device* private_data; } ;
struct ac97_codec_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct snd_ac97* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  compat_ac97_release ; 
 int /*<<< orphan*/  compat_soc_ac97_bus ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 struct snd_ac97* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

struct snd_ac97 *FUNC6(struct ac97_codec_device *adev)
{
	struct snd_ac97 *ac97;
	int ret;

	ac97 = FUNC4(sizeof(struct snd_ac97), GFP_KERNEL);
	if (ac97 == NULL)
		return FUNC0(-ENOMEM);

	ac97->private_data = adev;
	ac97->bus = &compat_soc_ac97_bus;

	ac97->dev.parent = &adev->dev;
	ac97->dev.release = compat_ac97_release;
	FUNC2(&ac97->dev, "%s-compat", FUNC1(&adev->dev));
	ret = FUNC3(&ac97->dev);
	if (ret) {
		FUNC5(&ac97->dev);
		return FUNC0(ret);
	}

	return ac97;
}
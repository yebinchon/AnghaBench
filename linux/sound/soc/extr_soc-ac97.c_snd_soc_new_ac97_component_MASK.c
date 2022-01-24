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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_ac97 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct snd_ac97* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct snd_ac97*,int,unsigned int,unsigned int) ; 
 int FUNC6 (struct snd_ac97*,struct snd_soc_component*) ; 
 struct snd_ac97* FUNC7 (struct snd_soc_component*) ; 

struct snd_ac97 *FUNC8(struct snd_soc_component *component,
	unsigned int id, unsigned int id_mask)
{
	struct snd_ac97 *ac97;
	int ret;

	ac97 = FUNC7(component);
	if (FUNC1(ac97))
		return ac97;

	if (id) {
		ret = FUNC5(ac97, false, id, id_mask);
		if (ret < 0) {
			FUNC2(component->dev, "Failed to reset AC97 device: %d\n",
				ret);
			goto err_put_device;
		}
	}

	ret = FUNC3(&ac97->dev);
	if (ret)
		goto err_put_device;

	ret = FUNC6(ac97, component);
	if (ret)
		goto err_put_device;

	return ac97;

err_put_device:
	FUNC4(&ac97->dev);
	return FUNC0(ret);
}
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
struct device {int /*<<< orphan*/  driver; } ;
struct ac97_codec_driver {int (* remove ) (struct ac97_codec_device*) ;} ;
struct ac97_codec_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ac97_codec_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int FUNC4 (struct ac97_codec_device*) ; 
 struct ac97_codec_device* FUNC5 (struct device*) ; 
 struct ac97_codec_driver* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct ac97_codec_device *adev = FUNC5(dev);
	struct ac97_codec_driver *adrv = FUNC6(dev->driver);
	int ret;

	ret = FUNC2(dev);
	if (ret < 0)
		return ret;

	ret = adrv->remove(adev);
	FUNC3(dev);
	if (ret == 0)
		FUNC0(adev);

	FUNC1(dev);

	return ret;
}
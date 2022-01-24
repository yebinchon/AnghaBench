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
struct ac97_codec_driver {int (* probe ) (struct ac97_codec_device*) ;} ;
struct ac97_codec_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ac97_codec_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ac97_codec_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int FUNC8 (struct ac97_codec_device*) ; 
 struct ac97_codec_device* FUNC9 (struct device*) ; 
 struct ac97_codec_driver* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct ac97_codec_device *adev = FUNC9(dev);
	struct ac97_codec_driver *adrv = FUNC10(dev->driver);
	int ret;

	ret = FUNC0(adev);
	if (ret)
		return ret;

	FUNC4(dev);
	FUNC6(dev);
	FUNC3(dev);

	ret = adrv->probe(adev);
	if (ret == 0)
		return 0;

	FUNC2(dev);
	FUNC7(dev);
	FUNC5(dev);
	FUNC1(adev);

	return ret;
}
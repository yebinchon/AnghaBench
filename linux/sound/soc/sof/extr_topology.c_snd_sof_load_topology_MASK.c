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
struct snd_sof_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  component; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SND_SOC_TPLG_INDEX_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*) ; 
 int FUNC3 (struct firmware const**,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct firmware const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sof_tplg_ops ; 

int FUNC5(struct snd_sof_dev *sdev, const char *file)
{
	const struct firmware *fw;
	int ret;

	FUNC0(sdev->dev, "loading topology:%s\n", file);

	ret = FUNC3(&fw, file, sdev->dev);
	if (ret < 0) {
		FUNC1(sdev->dev, "error: tplg request firmware %s failed err: %d\n",
			file, ret);
		return ret;
	}

	ret = FUNC4(sdev->component,
					  &sof_tplg_ops, fw,
					  SND_SOC_TPLG_INDEX_ALL);
	if (ret < 0) {
		FUNC1(sdev->dev, "error: tplg component load failed %d\n",
			ret);
		ret = -EINVAL;
	}

	FUNC2(fw);
	return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_card {int /*<<< orphan*/  name; int /*<<< orphan*/ * dev; } ;
struct regulator_dev {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct acp_platform_info {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 scalar_t__ FUNC1 (struct regulator_dev*) ; 
 TYPE_1__ acp_da7219_cfg ; 
 int /*<<< orphan*/  acp_da7219_desc ; 
 int bt_uart_enable ; 
 struct snd_soc_card cz_card ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct acp_platform_info* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct snd_soc_card*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_card*,struct acp_platform_info*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	int ret;
	struct snd_soc_card *card;
	struct acp_platform_info *machine;
	struct regulator_dev *rdev;

	acp_da7219_cfg.dev = &pdev->dev;
	rdev = FUNC5(&pdev->dev, &acp_da7219_desc,
				       &acp_da7219_cfg);
	if (FUNC0(rdev)) {
		FUNC2(&pdev->dev, "Failed to register regulator: %d\n",
			(int)FUNC1(rdev));
		return -EINVAL;
	}

	machine = FUNC4(&pdev->dev, sizeof(struct acp_platform_info),
			       GFP_KERNEL);
	if (!machine)
		return -ENOMEM;
	card = &cz_card;
	cz_card.dev = &pdev->dev;
	FUNC7(pdev, card);
	FUNC8(card, machine);
	ret = FUNC6(&pdev->dev, &cz_card);
	if (ret) {
		FUNC2(&pdev->dev,
				"devm_snd_soc_register_card(%s) failed: %d\n",
				cz_card.name, ret);
		return ret;
	}
	bt_uart_enable = !FUNC3(&pdev->dev,
						    "bt-pad-enable");
	return 0;
}
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
struct siu_info {void* reg; void* yram; void* xram; void* pram; int /*<<< orphan*/  fw; int /*<<< orphan*/ * dev; } ;
struct resource {scalar_t__ start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ PRAM_SIZE ; 
 scalar_t__ REG_OFFSET ; 
 scalar_t__ XRAM_OFFSET ; 
 scalar_t__ XRAM_SIZE ; 
 scalar_t__ YRAM_OFFSET ; 
 scalar_t__ YRAM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct siu_info*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 struct siu_info* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct firmware const*) ; 
 int FUNC10 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct resource*) ; 
 int /*<<< orphan*/  siu_component ; 
 int /*<<< orphan*/  siu_i2s_dai ; 
 struct siu_info* siu_i2s_data ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	const struct firmware *fw_entry;
	struct resource *res, *region;
	struct siu_info *info;
	int ret;

	info = FUNC3(&pdev->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;
	siu_i2s_data = info;
	info->dev = &pdev->dev;

	ret = FUNC10(&fw_entry, "siu_spb.bin", &pdev->dev);
	if (ret)
		return ret;

	/*
	 * Loaded firmware is "const" - read only, but we have to modify it in
	 * snd_siu_sh7343_spbAselect() and snd_siu_sh7343_spbBselect()
	 */
	FUNC6(&info->fw, fw_entry->data, fw_entry->size);

	FUNC9(fw_entry);

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;

	region = FUNC4(&pdev->dev, res->start,
					 FUNC11(res), pdev->name);
	if (!region) {
		FUNC0(&pdev->dev, "SIU region already claimed\n");
		return -EBUSY;
	}

	info->pram = FUNC2(&pdev->dev, res->start, PRAM_SIZE);
	if (!info->pram)
		return -ENOMEM;
	info->xram = FUNC2(&pdev->dev, res->start + XRAM_OFFSET,
				  XRAM_SIZE);
	if (!info->xram)
		return -ENOMEM;
	info->yram = FUNC2(&pdev->dev, res->start + YRAM_OFFSET,
				  YRAM_SIZE);
	if (!info->yram)
		return -ENOMEM;
	info->reg = FUNC2(&pdev->dev, res->start + REG_OFFSET,
			    FUNC11(res) - REG_OFFSET);
	if (!info->reg)
		return -ENOMEM;

	FUNC1(&pdev->dev, info);

	/* register using ARRAY version so we can keep dai name */
	ret = FUNC5(&pdev->dev, &siu_component,
					      &siu_i2s_dai, 1);
	if (ret < 0)
		return ret;

	FUNC8(&pdev->dev);

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct sh_fsi_platform_info {int /*<<< orphan*/  port_b; int /*<<< orphan*/  port_a; } ;
struct resource {scalar_t__ start; } ;
struct platform_device_id {scalar_t__ driver_data; } ;
struct TYPE_13__ {int /*<<< orphan*/  platform_data; struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; struct platform_device_id* id_entry; } ;
struct fsi_priv {struct fsi_master* master; scalar_t__ phys; scalar_t__ base; } ;
struct fsi_master {struct fsi_priv fsia; struct fsi_priv fsib; scalar_t__ base; int /*<<< orphan*/  lock; struct fsi_core const* core; } ;
struct fsi_core {int dummy; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct fsi_master*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct fsi_master* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fsi_master*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fsi_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fsi_interrupt ; 
 int /*<<< orphan*/  FUNC9 (char*,struct device_node*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct fsi_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fsi_soc_component ; 
 int /*<<< orphan*/  fsi_soc_dai ; 
 int FUNC11 (struct fsi_priv*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct fsi_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct sh_fsi_platform_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sh_fsi_platform_info*,int /*<<< orphan*/ ,int) ; 
 struct fsi_core* FUNC15 (TYPE_1__*) ; 
 unsigned int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (struct resource*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct fsi_master *master;
	struct device_node *np = pdev->dev.of_node;
	struct sh_fsi_platform_info info;
	const struct fsi_core *core;
	struct fsi_priv *fsi;
	struct resource *res;
	unsigned int irq;
	int ret;

	FUNC14(&info, 0, sizeof(info));

	core = NULL;
	if (np) {
		core = FUNC15(&pdev->dev);
		FUNC9("fsia", np, &info.port_a, &pdev->dev);
		FUNC9("fsib", np, &info.port_b, &pdev->dev);
	} else {
		const struct platform_device_id	*id_entry = pdev->id_entry;
		if (id_entry)
			core = (struct fsi_core *)id_entry->driver_data;

		if (pdev->dev.platform_data)
			FUNC13(&info, pdev->dev.platform_data, sizeof(info));
	}

	if (!core) {
		FUNC1(&pdev->dev, "unknown fsi device\n");
		return -ENODEV;
	}

	res = FUNC17(pdev, IORESOURCE_MEM, 0);
	irq = FUNC16(pdev, 0);
	if (!res || (int)irq <= 0) {
		FUNC1(&pdev->dev, "Not enough FSI platform resources.\n");
		return -ENODEV;
	}

	master = FUNC5(&pdev->dev, sizeof(*master), GFP_KERNEL);
	if (!master)
		return -ENOMEM;

	master->base = FUNC4(&pdev->dev,
					    res->start, FUNC20(res));
	if (!master->base) {
		FUNC1(&pdev->dev, "Unable to ioremap FSI registers.\n");
		return -ENXIO;
	}

	/* master setting */
	master->core		= core;
	FUNC21(&master->lock);

	/* FSI A setting */
	fsi		= &master->fsia;
	fsi->base	= master->base;
	fsi->phys	= res->start;
	fsi->master	= master;
	FUNC10(fsi, &info.port_a);
	FUNC8(fsi, &info.port_a);
	ret = FUNC11(fsi, &pdev->dev);
	if (ret < 0) {
		FUNC1(&pdev->dev, "FSIA stream probe failed\n");
		return ret;
	}

	/* FSI B setting */
	fsi		= &master->fsib;
	fsi->base	= master->base + 0x40;
	fsi->phys	= res->start + 0x40;
	fsi->master	= master;
	FUNC10(fsi, &info.port_b);
	FUNC8(fsi, &info.port_b);
	ret = FUNC11(fsi, &pdev->dev);
	if (ret < 0) {
		FUNC1(&pdev->dev, "FSIB stream probe failed\n");
		goto exit_fsia;
	}

	FUNC19(&pdev->dev);
	FUNC3(&pdev->dev, master);

	ret = FUNC6(&pdev->dev, irq, &fsi_interrupt, 0,
			       FUNC2(&pdev->dev), master);
	if (ret) {
		FUNC1(&pdev->dev, "irq request err\n");
		goto exit_fsib;
	}

	ret = FUNC7(&pdev->dev, &fsi_soc_component,
				    fsi_soc_dai, FUNC0(fsi_soc_dai));
	if (ret < 0) {
		FUNC1(&pdev->dev, "cannot snd component register\n");
		goto exit_fsib;
	}

	return ret;

exit_fsib:
	FUNC18(&pdev->dev);
	FUNC12(&master->fsib);
exit_fsia:
	FUNC12(&master->fsia);

	return ret;
}
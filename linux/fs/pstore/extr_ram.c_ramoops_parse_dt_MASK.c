#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_4__ {int /*<<< orphan*/  ecc_size; } ;
struct ramoops_platform_data {int dump_oops; int /*<<< orphan*/  record_size; int /*<<< orphan*/  pmsg_size; int /*<<< orphan*/  console_size; TYPE_1__ ecc_info; int /*<<< orphan*/  ftrace_size; int /*<<< orphan*/  flags; int /*<<< orphan*/  mem_type; int /*<<< orphan*/  mem_address; int /*<<< orphan*/  mem_size; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 struct device_node* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev,
			    struct ramoops_platform_data *pdata)
{
	struct device_node *of_node = pdev->dev.of_node;
	struct device_node *parent_node;
	struct resource *res;
	u32 value;
	int ret;

	FUNC0(&pdev->dev, "using Device Tree\n");

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC1(&pdev->dev,
			"failed to locate DT /reserved-memory resource\n");
		return -EINVAL;
	}

	pdata->mem_size = FUNC8(res);
	pdata->mem_address = res->start;
	pdata->mem_type = FUNC5(of_node, "unbuffered");
	pdata->dump_oops = !FUNC5(of_node, "no-dump-oops");

#define parse_size(name, field) {					\
		ret = ramoops_parse_dt_size(pdev, name, &value);	\
		if (ret < 0)						\
			return ret;					\
		field = value;						\
	}

	parse_size("record-size", pdata->record_size);
	parse_size("console-size", pdata->console_size);
	parse_size("ftrace-size", pdata->ftrace_size);
	parse_size("pmsg-size", pdata->pmsg_size);
	parse_size("ecc-size", pdata->ecc_info.ecc_size);
	parse_size("flags", pdata->flags);

#undef parse_size

	/*
	 * Some old Chromebooks relied on the kernel setting the
	 * console_size and pmsg_size to the record size since that's
	 * what the downstream kernel did.  These same Chromebooks had
	 * "ramoops" straight under the root node which isn't
	 * according to the current upstream bindings (though it was
	 * arguably acceptable under a prior version of the bindings).
	 * Let's make those old Chromebooks work by detecting that
	 * we're not a child of "reserved-memory" and mimicking the
	 * expected behavior.
	 */
	parent_node = FUNC2(of_node);
	if (!FUNC3(parent_node, "reserved-memory") &&
	    !pdata->console_size && !pdata->ftrace_size &&
	    !pdata->pmsg_size && !pdata->ecc_info.ecc_size) {
		pdata->console_size = pdata->record_size;
		pdata->pmsg_size = pdata->record_size;
	}
	FUNC4(parent_node);

	return 0;
}
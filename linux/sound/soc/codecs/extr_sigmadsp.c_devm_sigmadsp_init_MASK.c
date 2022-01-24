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
struct sigmadsp_ops {int dummy; } ;
struct sigmadsp {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct sigmadsp* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_sigmadsp_release ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct sigmadsp*) ; 
 struct sigmadsp* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sigmadsp*) ; 
 int FUNC4 (struct sigmadsp*,struct device*,struct sigmadsp_ops const*,char const*) ; 

struct sigmadsp *FUNC5(struct device *dev,
	const struct sigmadsp_ops *ops, const char *firmware_name)
{
	struct sigmadsp *sigmadsp;
	int ret;

	sigmadsp = FUNC2(devm_sigmadsp_release, sizeof(*sigmadsp),
		GFP_KERNEL);
	if (!sigmadsp)
		return FUNC0(-ENOMEM);

	ret = FUNC4(sigmadsp, dev, ops, firmware_name);
	if (ret) {
		FUNC3(sigmadsp);
		return FUNC0(ret);
	}

	FUNC1(dev, sigmadsp);

	return sigmadsp;
}
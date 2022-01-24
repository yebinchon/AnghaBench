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
struct samsung_spdif_info {int /*<<< orphan*/  pclk; int /*<<< orphan*/  sclk; int /*<<< orphan*/  regs; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC2 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 struct samsung_spdif_info spdif_info ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct samsung_spdif_info *spdif = &spdif_info;
	struct resource *mem_res;

	FUNC1(spdif->regs);

	mem_res = FUNC2(pdev, IORESOURCE_MEM, 0);
	if (mem_res)
		FUNC3(mem_res->start, FUNC4(mem_res));

	FUNC0(spdif->sclk);
	FUNC0(spdif->pclk);

	return 0;
}
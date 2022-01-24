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
typedef  void* u32 ;
struct device_node {int dummy; } ;
struct cs35l33_hg {int enable_hg_algo; void* vp_hg_va; void* vp_hg_rate; void* vp_hg; int /*<<< orphan*/  vp_hg_auto; void* ldo_entry_delay; void* ldo_path_disable; void* ldo_thld; void* release_rate; void* mem_depth; } ;
struct cs35l33_pdata {struct cs35l33_hg hg_config; } ;

/* Variables and functions */
 struct device_node* FUNC0 (struct device_node const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*) ; 
 scalar_t__ FUNC3 (struct device_node*,char*,void**) ; 

__attribute__((used)) static int FUNC4(const struct device_node *np,
			       struct cs35l33_pdata *pdata)
{
	struct device_node *hg;
	struct cs35l33_hg *hg_config = &pdata->hg_config;
	u32 val32;

	hg = FUNC0(np, "cirrus,hg-algo");
	hg_config->enable_hg_algo = hg ? true : false;

	if (hg_config->enable_hg_algo) {
		if (FUNC3(hg, "cirrus,mem-depth", &val32) >= 0)
			hg_config->mem_depth = val32;
		if (FUNC3(hg, "cirrus,release-rate",
				&val32) >= 0)
			hg_config->release_rate = val32;
		if (FUNC3(hg, "cirrus,ldo-thld", &val32) >= 0)
			hg_config->ldo_thld = val32;
		if (FUNC3(hg, "cirrus,ldo-path-disable",
				&val32) >= 0)
			hg_config->ldo_path_disable = val32;
		if (FUNC3(hg, "cirrus,ldo-entry-delay",
				&val32) >= 0)
			hg_config->ldo_entry_delay = val32;

		hg_config->vp_hg_auto = FUNC2(hg,
			"cirrus,vp-hg-auto");

		if (FUNC3(hg, "cirrus,vp-hg", &val32) >= 0)
			hg_config->vp_hg = val32;
		if (FUNC3(hg, "cirrus,vp-hg-rate", &val32) >= 0)
			hg_config->vp_hg_rate = val32;
		if (FUNC3(hg, "cirrus,vp-hg-va", &val32) >= 0)
			hg_config->vp_hg_va = val32;
	}

	FUNC1(hg);

	return 0;
}
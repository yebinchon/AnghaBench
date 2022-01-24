#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sst_dsp {int /*<<< orphan*/  module_list; int /*<<< orphan*/  dev; } ;
struct skl_module_table {int /*<<< orphan*/  list; TYPE_1__* mod_info; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int mod_id; struct firmware const* fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct firmware const*) ; 
 int FUNC4 (struct firmware const**,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct skl_module_table *FUNC5(struct sst_dsp *ctx,
						char *mod_name, int mod_id)
{
	const struct firmware *fw;
	struct skl_module_table *skl_module;
	unsigned int size;
	int ret;

	ret = FUNC4(&fw, mod_name, ctx->dev);
	if (ret < 0) {
		FUNC0(ctx->dev, "Request Module %s failed :%d\n",
							mod_name, ret);
		return NULL;
	}

	skl_module = FUNC1(ctx->dev, sizeof(*skl_module), GFP_KERNEL);
	if (skl_module == NULL) {
		FUNC3(fw);
		return NULL;
	}

	size = sizeof(*skl_module->mod_info);
	skl_module->mod_info = FUNC1(ctx->dev, size, GFP_KERNEL);
	if (skl_module->mod_info == NULL) {
		FUNC3(fw);
		return NULL;
	}

	skl_module->mod_info->mod_id = mod_id;
	skl_module->mod_info->fw = fw;
	FUNC2(&skl_module->list, &ctx->module_list);

	return skl_module;
}
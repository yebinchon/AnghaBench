#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sst_dsp {int /*<<< orphan*/  dev; } ;
struct skl_module_table {TYPE_2__* mod_info; int /*<<< orphan*/  usage_cnt; } ;
typedef  int /*<<< orphan*/  mod_name ;
struct TYPE_4__ {TYPE_1__* fw; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct skl_module_table* FUNC1 (struct sst_dsp*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 struct skl_module_table* FUNC3 (struct sst_dsp*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sst_dsp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct sst_dsp *ctx, u16 mod_id, u8 *guid)
{
	struct skl_module_table *module_entry = NULL;
	int ret = 0;
	char mod_name[64]; /* guid str = 32 chars + 4 hyphens */

	FUNC5(mod_name, sizeof(mod_name), "intel/dsp_fw_%pUL.bin", guid);

	module_entry = FUNC3(ctx, mod_id);
	if (module_entry == NULL) {
		module_entry = FUNC1(ctx, mod_name, mod_id);
		if (module_entry == NULL) {
			FUNC0(ctx->dev, "Failed to Load module\n");
			return -EINVAL;
		}
	}

	if (!module_entry->usage_cnt) {
		ret = FUNC4(ctx, module_entry->mod_info->fw->data,
				module_entry->mod_info->fw->size,
				mod_id, 0, true);
		if (ret < 0) {
			FUNC0(ctx->dev, "Failed to Load module\n");
			return ret;
		}
	}

	ret = FUNC2(ctx, mod_id);

	return ret;
}
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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  module_id; } ;
struct skl_module_cfg {int m_type; TYPE_1__ id; } ;
struct skl_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  SKL_MODULE_TYPE_ALGO 134 
#define  SKL_MODULE_TYPE_BASE_OUTFMT 133 
#define  SKL_MODULE_TYPE_COPIER 132 
#define  SKL_MODULE_TYPE_KPB 131 
#define  SKL_MODULE_TYPE_MIC_SELECT 130 
#define  SKL_MODULE_TYPE_SRCINT 129 
#define  SKL_MODULE_TYPE_UPDWMIX 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct skl_dev*,struct skl_module_cfg*) ; 
 int /*<<< orphan*/  FUNC4 (struct skl_dev*,struct skl_module_cfg*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct skl_dev*,struct skl_module_cfg*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct skl_dev*,struct skl_module_cfg*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct skl_dev*,struct skl_module_cfg*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct skl_dev*,struct skl_module_cfg*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct skl_dev*,struct skl_module_cfg*,void*) ; 

__attribute__((used)) static int FUNC10(struct skl_dev *skl,
			struct skl_module_cfg *module_config,
			u16 *module_config_size,
			void **param_data)
{
	u16 param_size;

	param_size  = FUNC3(skl, module_config);

	*param_data = FUNC1(param_size, GFP_KERNEL);
	if (NULL == *param_data)
		return -ENOMEM;

	*module_config_size = param_size;

	switch (module_config->m_type) {
	case SKL_MODULE_TYPE_COPIER:
		FUNC7(skl, module_config, *param_data);
		break;

	case SKL_MODULE_TYPE_SRCINT:
		FUNC8(skl, module_config, *param_data);
		break;

	case SKL_MODULE_TYPE_UPDWMIX:
		FUNC9(skl, module_config, *param_data);
		break;

	case SKL_MODULE_TYPE_ALGO:
		FUNC4(skl, module_config, *param_data);
		break;

	case SKL_MODULE_TYPE_BASE_OUTFMT:
	case SKL_MODULE_TYPE_MIC_SELECT:
	case SKL_MODULE_TYPE_KPB:
		FUNC6(skl, module_config, *param_data);
		break;

	default:
		FUNC5(skl, module_config, *param_data);
		break;

	}

	FUNC0(skl->dev, "Module type=%d id=%d config size: %d bytes\n",
			module_config->m_type, module_config->id.module_id,
			param_size);
	FUNC2("Module params:", DUMP_PREFIX_OFFSET, 8, 4,
			*param_data, param_size, false);
	return 0;
}
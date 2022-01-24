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
union devlink_param_value {int vbool; int /*<<< orphan*/  vstr; int /*<<< orphan*/  vu32; int /*<<< orphan*/  vu16; int /*<<< orphan*/  vu8; } ;
struct genl_info {scalar_t__* attrs; } ;
struct devlink_param {int type; } ;

/* Variables and functions */
 size_t DEVLINK_ATTR_PARAM_VALUE_DATA ; 
#define  DEVLINK_PARAM_TYPE_BOOL 132 
#define  DEVLINK_PARAM_TYPE_STRING 131 
#define  DEVLINK_PARAM_TYPE_U16 130 
#define  DEVLINK_PARAM_TYPE_U32 129 
#define  DEVLINK_PARAM_TYPE_U8 128 
 int EINVAL ; 
 int __DEVLINK_PARAM_MAX_STRING_VALUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(const struct devlink_param *param,
				  struct genl_info *info,
				  union devlink_param_value *value)
{
	int len;

	if (param->type != DEVLINK_PARAM_TYPE_BOOL &&
	    !info->attrs[DEVLINK_ATTR_PARAM_VALUE_DATA])
		return -EINVAL;

	switch (param->type) {
	case DEVLINK_PARAM_TYPE_U8:
		value->vu8 = FUNC3(info->attrs[DEVLINK_ATTR_PARAM_VALUE_DATA]);
		break;
	case DEVLINK_PARAM_TYPE_U16:
		value->vu16 = FUNC1(info->attrs[DEVLINK_ATTR_PARAM_VALUE_DATA]);
		break;
	case DEVLINK_PARAM_TYPE_U32:
		value->vu32 = FUNC2(info->attrs[DEVLINK_ATTR_PARAM_VALUE_DATA]);
		break;
	case DEVLINK_PARAM_TYPE_STRING:
		len = FUNC6(FUNC0(info->attrs[DEVLINK_ATTR_PARAM_VALUE_DATA]),
			      FUNC4(info->attrs[DEVLINK_ATTR_PARAM_VALUE_DATA]));
		if (len == FUNC4(info->attrs[DEVLINK_ATTR_PARAM_VALUE_DATA]) ||
		    len >= __DEVLINK_PARAM_MAX_STRING_VALUE)
			return -EINVAL;
		FUNC5(value->vstr,
		       FUNC0(info->attrs[DEVLINK_ATTR_PARAM_VALUE_DATA]));
		break;
	case DEVLINK_PARAM_TYPE_BOOL:
		value->vbool = info->attrs[DEVLINK_ATTR_PARAM_VALUE_DATA] ?
			       true : false;
		break;
	}
	return 0;
}
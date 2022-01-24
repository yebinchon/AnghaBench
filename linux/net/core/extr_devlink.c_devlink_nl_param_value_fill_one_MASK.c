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
union devlink_param_value {int vu8; int /*<<< orphan*/  vbool; int /*<<< orphan*/  vstr; int /*<<< orphan*/  vu32; int /*<<< orphan*/  vu16; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
typedef  enum devlink_param_type { ____Placeholder_devlink_param_type } devlink_param_type ;
typedef  enum devlink_param_cmode { ____Placeholder_devlink_param_cmode } devlink_param_cmode ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_ATTR_PARAM_VALUE ; 
 int /*<<< orphan*/  DEVLINK_ATTR_PARAM_VALUE_CMODE ; 
 int /*<<< orphan*/  DEVLINK_ATTR_PARAM_VALUE_DATA ; 
#define  DEVLINK_PARAM_TYPE_BOOL 132 
#define  DEVLINK_PARAM_TYPE_STRING 131 
#define  DEVLINK_PARAM_TYPE_U16 130 
#define  DEVLINK_PARAM_TYPE_U32 129 
#define  DEVLINK_PARAM_TYPE_U8 128 
 int EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(struct sk_buff *msg,
				enum devlink_param_type type,
				enum devlink_param_cmode cmode,
				union devlink_param_value val)
{
	struct nlattr *param_value_attr;

	param_value_attr = FUNC2(msg,
						 DEVLINK_ATTR_PARAM_VALUE);
	if (!param_value_attr)
		goto nla_put_failure;

	if (FUNC7(msg, DEVLINK_ATTR_PARAM_VALUE_CMODE, cmode))
		goto value_nest_cancel;

	switch (type) {
	case DEVLINK_PARAM_TYPE_U8:
		if (FUNC7(msg, DEVLINK_ATTR_PARAM_VALUE_DATA, val.vu8))
			goto value_nest_cancel;
		break;
	case DEVLINK_PARAM_TYPE_U16:
		if (FUNC5(msg, DEVLINK_ATTR_PARAM_VALUE_DATA, val.vu16))
			goto value_nest_cancel;
		break;
	case DEVLINK_PARAM_TYPE_U32:
		if (FUNC6(msg, DEVLINK_ATTR_PARAM_VALUE_DATA, val.vu32))
			goto value_nest_cancel;
		break;
	case DEVLINK_PARAM_TYPE_STRING:
		if (FUNC4(msg, DEVLINK_ATTR_PARAM_VALUE_DATA,
				   val.vstr))
			goto value_nest_cancel;
		break;
	case DEVLINK_PARAM_TYPE_BOOL:
		if (val.vbool &&
		    FUNC3(msg, DEVLINK_ATTR_PARAM_VALUE_DATA))
			goto value_nest_cancel;
		break;
	}

	FUNC1(msg, param_value_attr);
	return 0;

value_nest_cancel:
	FUNC0(msg, param_value_attr);
nla_put_failure:
	return -EMSGSIZE;
}
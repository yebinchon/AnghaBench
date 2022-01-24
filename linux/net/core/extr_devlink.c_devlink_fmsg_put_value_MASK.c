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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct devlink_fmsg_item {int /*<<< orphan*/  list; scalar_t__ len; int /*<<< orphan*/  value; int /*<<< orphan*/  attrtype; int /*<<< orphan*/  nla_type; } ;
struct devlink_fmsg {int /*<<< orphan*/  item_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_ATTR_FMSG_OBJ_VALUE_DATA ; 
 scalar_t__ DEVLINK_FMSG_MAX_SIZE ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct devlink_fmsg_item* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct devlink_fmsg *fmsg,
				  const void *value, u16 value_len,
				  u8 value_nla_type)
{
	struct devlink_fmsg_item *item;

	if (value_len > DEVLINK_FMSG_MAX_SIZE)
		return -EMSGSIZE;

	item = FUNC0(sizeof(*item) + value_len, GFP_KERNEL);
	if (!item)
		return -ENOMEM;

	item->nla_type = value_nla_type;
	item->len = value_len;
	item->attrtype = DEVLINK_ATTR_FMSG_OBJ_VALUE_DATA;
	FUNC2(&item->value, value, item->len);
	FUNC1(&item->list, &fmsg->item_list);

	return 0;
}
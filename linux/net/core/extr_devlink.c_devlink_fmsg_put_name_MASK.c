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
struct devlink_fmsg_item {int /*<<< orphan*/  list; scalar_t__ len; int /*<<< orphan*/  value; int /*<<< orphan*/  attrtype; int /*<<< orphan*/  nla_type; } ;
struct devlink_fmsg {int /*<<< orphan*/  item_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_ATTR_FMSG_OBJ_NAME ; 
 scalar_t__ DEVLINK_FMSG_MAX_SIZE ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLA_NUL_STRING ; 
 struct devlink_fmsg_item* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(struct devlink_fmsg *fmsg, const char *name)
{
	struct devlink_fmsg_item *item;

	if (FUNC3(name) + 1 > DEVLINK_FMSG_MAX_SIZE)
		return -EMSGSIZE;

	item = FUNC0(sizeof(*item) + FUNC3(name) + 1, GFP_KERNEL);
	if (!item)
		return -ENOMEM;

	item->nla_type = NLA_NUL_STRING;
	item->len = FUNC3(name) + 1;
	item->attrtype = DEVLINK_ATTR_FMSG_OBJ_NAME;
	FUNC2(&item->value, name, item->len);
	FUNC1(&item->list, &fmsg->item_list);

	return 0;
}
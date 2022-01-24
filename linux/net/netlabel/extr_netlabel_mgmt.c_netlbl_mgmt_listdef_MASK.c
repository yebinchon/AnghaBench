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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct netlbl_dom_map {int dummy; } ;
struct genl_info {scalar_t__* attrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t NLBL_MGMT_A_FAMILY ; 
 int /*<<< orphan*/  NLBL_MGMT_C_LISTDEF ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 void* FUNC1 (struct sk_buff*,struct genl_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct netlbl_dom_map* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netlbl_mgmt_gnl_family ; 
 int FUNC5 (struct sk_buff*,struct netlbl_dom_map*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct genl_info *info)
{
	int ret_val = -ENOMEM;
	struct sk_buff *ans_skb = NULL;
	void *data;
	struct netlbl_dom_map *entry;
	u16 family;

	if (info->attrs[NLBL_MGMT_A_FAMILY])
		family = FUNC6(info->attrs[NLBL_MGMT_A_FAMILY]);
	else
		family = AF_INET;

	ans_skb = FUNC7(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (ans_skb == NULL)
		return -ENOMEM;
	data = FUNC1(ans_skb, info, &netlbl_mgmt_gnl_family,
				 0, NLBL_MGMT_C_LISTDEF);
	if (data == NULL)
		goto listdef_failure;

	FUNC8();
	entry = FUNC4(NULL, family);
	if (entry == NULL) {
		ret_val = -ENOENT;
		goto listdef_failure_lock;
	}
	ret_val = FUNC5(ans_skb, entry);
	FUNC9();
	if (ret_val != 0)
		goto listdef_failure;

	FUNC0(ans_skb, data);
	return FUNC2(ans_skb, info);

listdef_failure_lock:
	FUNC9();
listdef_failure:
	FUNC3(ans_skb);
	return ret_val;
}
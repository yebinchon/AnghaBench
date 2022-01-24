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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct genl_info {int /*<<< orphan*/ * attrs; } ;
struct calipso_doi {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t NLBL_CALIPSO_A_DOI ; 
 int /*<<< orphan*/  NLBL_CALIPSO_A_MTYPE ; 
 int /*<<< orphan*/  NLBL_CALIPSO_C_LIST ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 struct calipso_doi* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct calipso_doi*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 void* FUNC3 (struct sk_buff*,struct genl_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  netlbl_calipso_gnl_family ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct genl_info *info)
{
	int ret_val;
	struct sk_buff *ans_skb = NULL;
	void *data;
	u32 doi;
	struct calipso_doi *doi_def;

	if (!info->attrs[NLBL_CALIPSO_A_DOI]) {
		ret_val = -EINVAL;
		goto list_failure;
	}

	doi = FUNC6(info->attrs[NLBL_CALIPSO_A_DOI]);

	doi_def = FUNC0(doi);
	if (!doi_def) {
		ret_val = -EINVAL;
		goto list_failure;
	}

	ans_skb = FUNC8(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!ans_skb) {
		ret_val = -ENOMEM;
		goto list_failure_put;
	}
	data = FUNC3(ans_skb, info, &netlbl_calipso_gnl_family,
				 0, NLBL_CALIPSO_C_LIST);
	if (!data) {
		ret_val = -ENOMEM;
		goto list_failure_put;
	}

	ret_val = FUNC7(ans_skb, NLBL_CALIPSO_A_MTYPE, doi_def->type);
	if (ret_val != 0)
		goto list_failure_put;

	FUNC1(doi_def);

	FUNC2(ans_skb, data);
	return FUNC4(ans_skb, info);

list_failure_put:
	FUNC1(doi_def);
list_failure:
	FUNC5(ans_skb);
	return ret_val;
}
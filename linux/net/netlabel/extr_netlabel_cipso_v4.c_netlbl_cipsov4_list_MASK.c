#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_info {int /*<<< orphan*/ * attrs; } ;
struct TYPE_8__ {TYPE_3__* std; } ;
struct cipso_v4_doi {size_t type; scalar_t__* tags; TYPE_4__ map; } ;
struct TYPE_6__ {size_t local_size; size_t* local; } ;
struct TYPE_5__ {size_t local_size; size_t* local; } ;
struct TYPE_7__ {TYPE_2__ cat; TYPE_1__ lvl; } ;

/* Variables and functions */
 size_t CIPSO_V4_INV_CAT ; 
 size_t CIPSO_V4_INV_LVL ; 
#define  CIPSO_V4_MAP_TRANS 128 
 scalar_t__ CIPSO_V4_TAG_INVALID ; 
 size_t CIPSO_V4_TAG_MAXCNT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t NLBL_CIPSOV4_A_DOI ; 
 int /*<<< orphan*/  NLBL_CIPSOV4_A_MLSCAT ; 
 int /*<<< orphan*/  NLBL_CIPSOV4_A_MLSCATLOC ; 
 int /*<<< orphan*/  NLBL_CIPSOV4_A_MLSCATLST ; 
 int /*<<< orphan*/  NLBL_CIPSOV4_A_MLSCATREM ; 
 int /*<<< orphan*/  NLBL_CIPSOV4_A_MLSLVL ; 
 int /*<<< orphan*/  NLBL_CIPSOV4_A_MLSLVLLOC ; 
 int /*<<< orphan*/  NLBL_CIPSOV4_A_MLSLVLLST ; 
 int /*<<< orphan*/  NLBL_CIPSOV4_A_MLSLVLREM ; 
 int /*<<< orphan*/  NLBL_CIPSOV4_A_MTYPE ; 
 int /*<<< orphan*/  NLBL_CIPSOV4_A_TAG ; 
 int /*<<< orphan*/  NLBL_CIPSOV4_A_TAGLST ; 
 int /*<<< orphan*/  NLBL_CIPSOV4_C_LIST ; 
 size_t NLMSG_DEFAULT_SIZE ; 
 struct cipso_v4_doi* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 void* FUNC2 (struct sk_buff*,struct genl_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  netlbl_cipsov4_gnl_family ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct sk_buff* FUNC10 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, struct genl_info *info)
{
	int ret_val;
	struct sk_buff *ans_skb = NULL;
	u32 nlsze_mult = 1;
	void *data;
	u32 doi;
	struct nlattr *nla_a;
	struct nlattr *nla_b;
	struct cipso_v4_doi *doi_def;
	u32 iter;

	if (!info->attrs[NLBL_CIPSOV4_A_DOI]) {
		ret_val = -EINVAL;
		goto list_failure;
	}

list_start:
	ans_skb = FUNC10(NLMSG_DEFAULT_SIZE * nlsze_mult, GFP_KERNEL);
	if (ans_skb == NULL) {
		ret_val = -ENOMEM;
		goto list_failure;
	}
	data = FUNC2(ans_skb, info, &netlbl_cipsov4_gnl_family,
				 0, NLBL_CIPSOV4_C_LIST);
	if (data == NULL) {
		ret_val = -ENOMEM;
		goto list_failure;
	}

	doi = FUNC5(info->attrs[NLBL_CIPSOV4_A_DOI]);

	FUNC11();
	doi_def = FUNC0(doi);
	if (doi_def == NULL) {
		ret_val = -EINVAL;
		goto list_failure_lock;
	}

	ret_val = FUNC8(ans_skb, NLBL_CIPSOV4_A_MTYPE, doi_def->type);
	if (ret_val != 0)
		goto list_failure_lock;

	nla_a = FUNC7(ans_skb, NLBL_CIPSOV4_A_TAGLST);
	if (nla_a == NULL) {
		ret_val = -ENOMEM;
		goto list_failure_lock;
	}
	for (iter = 0;
	     iter < CIPSO_V4_TAG_MAXCNT &&
	       doi_def->tags[iter] != CIPSO_V4_TAG_INVALID;
	     iter++) {
		ret_val = FUNC9(ans_skb,
				     NLBL_CIPSOV4_A_TAG,
				     doi_def->tags[iter]);
		if (ret_val != 0)
			goto list_failure_lock;
	}
	FUNC6(ans_skb, nla_a);

	switch (doi_def->type) {
	case CIPSO_V4_MAP_TRANS:
		nla_a = FUNC7(ans_skb,
					      NLBL_CIPSOV4_A_MLSLVLLST);
		if (nla_a == NULL) {
			ret_val = -ENOMEM;
			goto list_failure_lock;
		}
		for (iter = 0;
		     iter < doi_def->map.std->lvl.local_size;
		     iter++) {
			if (doi_def->map.std->lvl.local[iter] ==
			    CIPSO_V4_INV_LVL)
				continue;

			nla_b = FUNC7(ans_skb,
						      NLBL_CIPSOV4_A_MLSLVL);
			if (nla_b == NULL) {
				ret_val = -ENOMEM;
				goto list_retry;
			}
			ret_val = FUNC8(ans_skb,
					      NLBL_CIPSOV4_A_MLSLVLLOC,
					      iter);
			if (ret_val != 0)
				goto list_retry;
			ret_val = FUNC8(ans_skb,
					    NLBL_CIPSOV4_A_MLSLVLREM,
					    doi_def->map.std->lvl.local[iter]);
			if (ret_val != 0)
				goto list_retry;
			FUNC6(ans_skb, nla_b);
		}
		FUNC6(ans_skb, nla_a);

		nla_a = FUNC7(ans_skb,
					      NLBL_CIPSOV4_A_MLSCATLST);
		if (nla_a == NULL) {
			ret_val = -ENOMEM;
			goto list_retry;
		}
		for (iter = 0;
		     iter < doi_def->map.std->cat.local_size;
		     iter++) {
			if (doi_def->map.std->cat.local[iter] ==
			    CIPSO_V4_INV_CAT)
				continue;

			nla_b = FUNC7(ans_skb,
						      NLBL_CIPSOV4_A_MLSCAT);
			if (nla_b == NULL) {
				ret_val = -ENOMEM;
				goto list_retry;
			}
			ret_val = FUNC8(ans_skb,
					      NLBL_CIPSOV4_A_MLSCATLOC,
					      iter);
			if (ret_val != 0)
				goto list_retry;
			ret_val = FUNC8(ans_skb,
					    NLBL_CIPSOV4_A_MLSCATREM,
					    doi_def->map.std->cat.local[iter]);
			if (ret_val != 0)
				goto list_retry;
			FUNC6(ans_skb, nla_b);
		}
		FUNC6(ans_skb, nla_a);

		break;
	}
	FUNC12();

	FUNC1(ans_skb, data);
	return FUNC3(ans_skb, info);

list_retry:
	/* XXX - this limit is a guesstimate */
	if (nlsze_mult < 4) {
		FUNC12();
		FUNC4(ans_skb);
		nlsze_mult *= 2;
		goto list_start;
	}
list_failure_lock:
	FUNC12();
list_failure:
	FUNC4(ans_skb);
	return ret_val;
}
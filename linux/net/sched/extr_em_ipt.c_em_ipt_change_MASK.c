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
typedef  int u8 ;
struct xt_match {int /*<<< orphan*/  me; } ;
struct tcf_ematch {int datalen; unsigned long data; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct em_ipt_match {int nfproto; int /*<<< orphan*/  match_data; int /*<<< orphan*/  hook; struct xt_match* match; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct xt_match*) ; 
#define  NFPROTO_IPV4 129 
#define  NFPROTO_IPV6 128 
 int FUNC1 (struct xt_match*) ; 
 size_t TCA_EM_IPT_HOOK ; 
 size_t TCA_EM_IPT_MATCH_DATA ; 
 size_t TCA_EM_IPT_MATCH_NAME ; 
 int /*<<< orphan*/  TCA_EM_IPT_MAX ; 
 size_t TCA_EM_IPT_NFPROTO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net*,struct em_ipt_match*,int) ; 
 int /*<<< orphan*/  em_ipt_policy ; 
 struct xt_match* FUNC4 (struct nlattr**) ; 
 int /*<<< orphan*/  FUNC5 (struct em_ipt_match*) ; 
 struct em_ipt_match* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nlattr*) ; 
 int FUNC9 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC10 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct nlattr*,int) ; 
 int FUNC12 (struct nlattr**,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static int FUNC14(struct net *net, void *data, int data_len,
			 struct tcf_ematch *em)
{
	struct nlattr *tb[TCA_EM_IPT_MAX + 1];
	struct em_ipt_match *im = NULL;
	struct xt_match *match;
	int mdata_len, ret;
	u8 nfproto;

	ret = FUNC12(tb, TCA_EM_IPT_MAX, data, data_len,
				   em_ipt_policy, NULL);
	if (ret < 0)
		return ret;

	if (!tb[TCA_EM_IPT_HOOK] || !tb[TCA_EM_IPT_MATCH_NAME] ||
	    !tb[TCA_EM_IPT_MATCH_DATA] || !tb[TCA_EM_IPT_NFPROTO])
		return -EINVAL;

	nfproto = FUNC9(tb[TCA_EM_IPT_NFPROTO]);
	switch (nfproto) {
	case NFPROTO_IPV4:
	case NFPROTO_IPV6:
		break;
	default:
		return -EINVAL;
	}

	match = FUNC4(tb);
	if (FUNC0(match)) {
		FUNC13("unable to load match\n");
		return FUNC1(match);
	}

	mdata_len = FUNC2(FUNC10(tb[TCA_EM_IPT_MATCH_DATA]));
	im = FUNC6(sizeof(*im) + mdata_len, GFP_KERNEL);
	if (!im) {
		ret = -ENOMEM;
		goto err;
	}

	im->match = match;
	im->hook = FUNC8(tb[TCA_EM_IPT_HOOK]);
	im->nfproto = nfproto;
	FUNC11(im->match_data, tb[TCA_EM_IPT_MATCH_DATA], mdata_len);

	ret = FUNC3(net, im, mdata_len);
	if (ret)
		goto err;

	em->datalen = sizeof(*im) + mdata_len;
	em->data = (unsigned long)im;
	return 0;

err:
	FUNC5(im);
	FUNC7(match->me);
	return ret;
}
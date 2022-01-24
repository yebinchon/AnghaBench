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
typedef  scalar_t__ u64 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nft_userdata {int /*<<< orphan*/  data; scalar_t__ len; } ;
struct nft_set_ext {int dummy; } ;
struct nft_set_elem {int /*<<< orphan*/  priv; } ;
struct nft_set {scalar_t__ dtype; int /*<<< orphan*/  dlen; int /*<<< orphan*/  klen; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ key; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NFTA_LIST_ELEM ; 
 int /*<<< orphan*/  NFTA_SET_ELEM_DATA ; 
 int /*<<< orphan*/  NFTA_SET_ELEM_EXPIRATION ; 
 int /*<<< orphan*/  NFTA_SET_ELEM_EXPR ; 
 int /*<<< orphan*/  NFTA_SET_ELEM_FLAGS ; 
 int /*<<< orphan*/  NFTA_SET_ELEM_KEY ; 
 int /*<<< orphan*/  NFTA_SET_ELEM_OBJREF ; 
 int /*<<< orphan*/  NFTA_SET_ELEM_PAD ; 
 int /*<<< orphan*/  NFTA_SET_ELEM_TIMEOUT ; 
 int /*<<< orphan*/  NFTA_SET_ELEM_USERDATA ; 
 scalar_t__ NFT_DATA_VALUE ; 
 scalar_t__ NFT_DATA_VERDICT ; 
 int /*<<< orphan*/  NFT_SET_EXT_DATA ; 
 int /*<<< orphan*/  NFT_SET_EXT_EXPIRATION ; 
 int /*<<< orphan*/  NFT_SET_EXT_EXPR ; 
 int /*<<< orphan*/  NFT_SET_EXT_FLAGS ; 
 int /*<<< orphan*/  NFT_SET_EXT_OBJREF ; 
 int /*<<< orphan*/  NFT_SET_EXT_TIMEOUT ; 
 int /*<<< orphan*/  NFT_SET_EXT_USERDATA ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_set_ext* FUNC5 (struct nft_set const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nft_set_ext const*) ; 
 scalar_t__ FUNC7 (struct nft_set_ext const*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC8 (struct nft_set_ext const*) ; 
 int /*<<< orphan*/  FUNC9 (struct nft_set_ext const*) ; 
 int /*<<< orphan*/ * FUNC10 (struct nft_set_ext const*) ; 
 int /*<<< orphan*/  FUNC11 (struct nft_set_ext const*) ; 
 TYPE_2__** FUNC12 (struct nft_set_ext const*) ; 
 scalar_t__* FUNC13 (struct nft_set_ext const*) ; 
 struct nft_userdata* FUNC14 (struct nft_set_ext const*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC16 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,unsigned char*) ; 
 unsigned char* FUNC22 (struct sk_buff*) ; 
 scalar_t__ FUNC23 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC24(struct sk_buff *skb,
				  const struct nft_set *set,
				  const struct nft_set_elem *elem)
{
	const struct nft_set_ext *ext = FUNC5(set, elem->priv);
	unsigned char *b = FUNC22(skb);
	struct nlattr *nest;

	nest = FUNC16(skb, NFTA_LIST_ELEM);
	if (nest == NULL)
		goto nla_put_failure;

	if (FUNC3(skb, NFTA_SET_ELEM_KEY, FUNC11(ext),
			  NFT_DATA_VALUE, set->klen) < 0)
		goto nla_put_failure;

	if (FUNC7(ext, NFT_SET_EXT_DATA) &&
	    FUNC3(skb, NFTA_SET_ELEM_DATA, FUNC6(ext),
			  set->dtype == NFT_DATA_VERDICT ? NFT_DATA_VERDICT : NFT_DATA_VALUE,
			  set->dlen) < 0)
		goto nla_put_failure;

	if (FUNC7(ext, NFT_SET_EXT_EXPR) &&
	    FUNC4(skb, NFTA_SET_ELEM_EXPR, FUNC9(ext)) < 0)
		goto nla_put_failure;

	if (FUNC7(ext, NFT_SET_EXT_OBJREF) &&
	    FUNC20(skb, NFTA_SET_ELEM_OBJREF,
			   (*FUNC12(ext))->key.name) < 0)
		goto nla_put_failure;

	if (FUNC7(ext, NFT_SET_EXT_FLAGS) &&
	    FUNC18(skb, NFTA_SET_ELEM_FLAGS,
		         FUNC1(*FUNC10(ext))))
		goto nla_put_failure;

	if (FUNC7(ext, NFT_SET_EXT_TIMEOUT) &&
	    FUNC19(skb, NFTA_SET_ELEM_TIMEOUT,
			 FUNC2(*FUNC13(ext)),
			 NFTA_SET_ELEM_PAD))
		goto nla_put_failure;

	if (FUNC7(ext, NFT_SET_EXT_EXPIRATION)) {
		u64 expires, now = FUNC0();

		expires = *FUNC8(ext);
		if (FUNC23(now, expires))
			expires -= now;
		else
			expires = 0;

		if (FUNC19(skb, NFTA_SET_ELEM_EXPIRATION,
				 FUNC2(expires),
				 NFTA_SET_ELEM_PAD))
			goto nla_put_failure;
	}

	if (FUNC7(ext, NFT_SET_EXT_USERDATA)) {
		struct nft_userdata *udata;

		udata = FUNC14(ext);
		if (FUNC17(skb, NFTA_SET_ELEM_USERDATA,
			    udata->len + 1, udata->data))
			goto nla_put_failure;
	}

	FUNC15(skb, nest);
	return 0;

nla_put_failure:
	FUNC21(skb, b);
	return -EMSGSIZE;
}
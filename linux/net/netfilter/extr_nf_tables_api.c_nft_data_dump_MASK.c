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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nft_data {int /*<<< orphan*/  verdict; } ;
typedef  enum nft_data_types { ____Placeholder_nft_data_types } nft_data_types ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NFTA_DATA_VERDICT ; 
#define  NFT_DATA_VALUE 129 
#define  NFT_DATA_VERDICT 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct sk_buff*,struct nft_data const*,unsigned int) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int) ; 

int FUNC5(struct sk_buff *skb, int attr, const struct nft_data *data,
		  enum nft_data_types type, unsigned int len)
{
	struct nlattr *nest;
	int err;

	nest = FUNC4(skb, attr);
	if (nest == NULL)
		return -1;

	switch (type) {
	case NFT_DATA_VALUE:
		err = FUNC1(skb, data, len);
		break;
	case NFT_DATA_VERDICT:
		err = FUNC2(skb, NFTA_DATA_VERDICT, &data->verdict);
		break;
	default:
		err = -EINVAL;
		FUNC0(1);
	}

	FUNC3(skb, nest);
	return err;
}
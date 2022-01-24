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
struct nft_object {int dummy; } ;
struct nft_limit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFT_LIMIT_PKT_BYTES ; 
 int FUNC0 (struct sk_buff*,struct nft_limit const*,int /*<<< orphan*/ ) ; 
 struct nft_limit* FUNC1 (struct nft_object*) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb,
				    struct nft_object *obj,
				    bool reset)
{
	const struct nft_limit *priv = FUNC1(obj);

	return FUNC0(skb, priv, NFT_LIMIT_PKT_BYTES);
}
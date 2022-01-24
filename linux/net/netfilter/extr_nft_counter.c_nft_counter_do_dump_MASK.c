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
struct nft_counter_percpu_priv {int dummy; } ;
struct nft_counter {int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_COUNTER_BYTES ; 
 int /*<<< orphan*/  NFTA_COUNTER_PACKETS ; 
 int /*<<< orphan*/  NFTA_COUNTER_PAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nft_counter_percpu_priv*,struct nft_counter*) ; 
 int /*<<< orphan*/  FUNC2 (struct nft_counter_percpu_priv*,struct nft_counter*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb,
			       struct nft_counter_percpu_priv *priv,
			       bool reset)
{
	struct nft_counter total;

	FUNC1(priv, &total);

	if (FUNC3(skb, NFTA_COUNTER_BYTES, FUNC0(total.bytes),
			 NFTA_COUNTER_PAD) ||
	    FUNC3(skb, NFTA_COUNTER_PACKETS, FUNC0(total.packets),
			 NFTA_COUNTER_PAD))
		goto nla_put_failure;

	if (reset)
		FUNC2(priv, &total);

	return 0;

nla_put_failure:
	return -1;
}
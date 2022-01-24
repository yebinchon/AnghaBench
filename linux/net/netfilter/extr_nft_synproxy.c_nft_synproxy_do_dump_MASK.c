#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  options; int /*<<< orphan*/  wscale; int /*<<< orphan*/  mss; } ;
struct nft_synproxy {TYPE_1__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFTA_SYNPROXY_FLAGS ; 
 int /*<<< orphan*/  NFTA_SYNPROXY_MSS ; 
 int /*<<< orphan*/  NFTA_SYNPROXY_WSCALE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct nft_synproxy *priv)
{
	if (FUNC2(skb, NFTA_SYNPROXY_MSS, FUNC1(priv->info.mss)) ||
	    FUNC4(skb, NFTA_SYNPROXY_WSCALE, priv->info.wscale) ||
	    FUNC3(skb, NFTA_SYNPROXY_FLAGS, FUNC0(priv->info.options)))
		goto nla_put_failure;

	return 0;

nla_put_failure:
	return -1;
}
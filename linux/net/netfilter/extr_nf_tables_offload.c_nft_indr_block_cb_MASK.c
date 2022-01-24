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
struct nft_chain {int dummy; } ;
struct nft_base_chain {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  commit_mutex; } ;
struct net {TYPE_1__ nft; } ;
typedef  int /*<<< orphan*/  flow_indr_block_bind_cb_t ;
typedef  enum flow_block_command { ____Placeholder_flow_block_command } flow_block_command ;

/* Variables and functions */
 struct nft_chain* FUNC0 (struct net_device*) ; 
 struct net* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct nft_base_chain* FUNC4 (struct nft_chain*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct nft_base_chain*,int /*<<< orphan*/ *,void*,int) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev,
			      flow_indr_block_bind_cb_t *cb, void *cb_priv,
			      enum flow_block_command cmd)
{
	struct net *net = FUNC1(dev);
	struct nft_chain *chain;

	FUNC2(&net->nft.commit_mutex);
	chain = FUNC0(dev);
	if (chain) {
		struct nft_base_chain *basechain;

		basechain = FUNC4(chain);
		FUNC5(dev, basechain, cb, cb_priv, cmd);
	}
	FUNC3(&net->nft.commit_mutex);
}
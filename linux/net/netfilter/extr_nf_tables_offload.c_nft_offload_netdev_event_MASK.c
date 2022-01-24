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
struct notifier_block {int dummy; } ;
struct nft_chain {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  commit_mutex; } ;
struct net {TYPE_1__ nft; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 struct nft_chain* FUNC0 (struct net_device*) ; 
 struct net* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (struct nft_chain*) ; 

__attribute__((used)) static int FUNC6(struct notifier_block *this,
				    unsigned long event, void *ptr)
{
	struct net_device *dev = FUNC4(ptr);
	struct net *net = FUNC1(dev);
	struct nft_chain *chain;

	FUNC2(&net->nft.commit_mutex);
	chain = FUNC0(dev);
	if (chain)
		FUNC5(chain);
	FUNC3(&net->nft.commit_mutex);

	return NOTIFY_DONE;
}
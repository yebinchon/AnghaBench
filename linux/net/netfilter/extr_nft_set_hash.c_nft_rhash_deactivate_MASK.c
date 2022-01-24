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
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {TYPE_1__ val; } ;
struct nft_set_elem {TYPE_2__ key; } ;
struct nft_set {int dummy; } ;
typedef  void nft_rhash_elem ;
struct nft_rhash_cmp_arg {int /*<<< orphan*/  key; struct nft_set const* set; int /*<<< orphan*/  genmask; } ;
struct nft_rhash {int /*<<< orphan*/  ht; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net const*) ; 
 int /*<<< orphan*/  FUNC1 (struct net const*,struct nft_set const*,void*) ; 
 int /*<<< orphan*/  nft_rhash_params ; 
 struct nft_rhash* FUNC2 (struct nft_set const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (int /*<<< orphan*/ *,struct nft_rhash_cmp_arg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC6(const struct net *net,
				  const struct nft_set *set,
				  const struct nft_set_elem *elem)
{
	struct nft_rhash *priv = FUNC2(set);
	struct nft_rhash_elem *he;
	struct nft_rhash_cmp_arg arg = {
		.genmask = FUNC0(net),
		.set	 = set,
		.key	 = elem->key.val.data,
	};

	FUNC3();
	he = FUNC5(&priv->ht, &arg, nft_rhash_params);
	if (he != NULL &&
	    !FUNC1(net, set, he))
		he = NULL;

	FUNC4();

	return he;
}
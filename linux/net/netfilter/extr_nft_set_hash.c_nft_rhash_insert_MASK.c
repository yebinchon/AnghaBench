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
struct nft_set_ext {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct TYPE_3__ {TYPE_2__ val; } ;
struct nft_set_elem {TYPE_1__ key; struct nft_rhash_elem* priv; } ;
struct nft_set {int dummy; } ;
struct nft_rhash_elem {struct nft_set_ext ext; int /*<<< orphan*/  node; } ;
struct nft_rhash_cmp_arg {int /*<<< orphan*/  key; struct nft_set const* set; int /*<<< orphan*/  genmask; } ;
struct nft_rhash {int /*<<< orphan*/  ht; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 scalar_t__ FUNC0 (struct nft_rhash_elem*) ; 
 int FUNC1 (struct nft_rhash_elem*) ; 
 int /*<<< orphan*/  FUNC2 (struct net const*) ; 
 int /*<<< orphan*/  nft_rhash_params ; 
 struct nft_rhash* FUNC3 (struct nft_set const*) ; 
 struct nft_rhash_elem* FUNC4 (int /*<<< orphan*/ *,struct nft_rhash_cmp_arg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const struct net *net, const struct nft_set *set,
			    const struct nft_set_elem *elem,
			    struct nft_set_ext **ext)
{
	struct nft_rhash *priv = FUNC3(set);
	struct nft_rhash_elem *he = elem->priv;
	struct nft_rhash_cmp_arg arg = {
		.genmask = FUNC2(net),
		.set	 = set,
		.key	 = elem->key.val.data,
	};
	struct nft_rhash_elem *prev;

	prev = FUNC4(&priv->ht, &arg, &he->node,
						nft_rhash_params);
	if (FUNC0(prev))
		return FUNC1(prev);
	if (prev) {
		*ext = &prev->ext;
		return -EEXIST;
	}
	return 0;
}
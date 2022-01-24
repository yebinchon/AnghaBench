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
struct nft_set_ext {int dummy; } ;
struct nft_set_elem {int /*<<< orphan*/  priv; } ;
struct nft_set {int /*<<< orphan*/  dtype; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  use; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFT_SET_EXT_DATA ; 
 int /*<<< orphan*/  NFT_SET_EXT_OBJREF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nft_set_ext* FUNC1 (struct nft_set const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nft_set_ext const*) ; 
 scalar_t__ FUNC3 (struct nft_set_ext const*,int /*<<< orphan*/ ) ; 
 TYPE_1__** FUNC4 (struct nft_set_ext const*) ; 

__attribute__((used)) static void FUNC5(const struct net *net,
				  const struct nft_set *set,
				  struct nft_set_elem *elem)
{
	const struct nft_set_ext *ext = FUNC1(set, elem->priv);

	if (FUNC3(ext, NFT_SET_EXT_DATA))
		FUNC0(FUNC2(ext), set->dtype);
	if (FUNC3(ext, NFT_SET_EXT_OBJREF))
		(*FUNC4(ext))->use++;
}
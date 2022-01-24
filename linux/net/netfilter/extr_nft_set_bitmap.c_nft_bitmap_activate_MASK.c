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
typedef  size_t u8 ;
typedef  size_t u32 ;
struct nft_set_elem {struct nft_bitmap_elem* priv; } ;
struct nft_set {int dummy; } ;
struct nft_bitmap_elem {int /*<<< orphan*/  ext; } ;
struct nft_bitmap {size_t* bitmap; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nft_set const*,int /*<<< orphan*/ ,size_t*,size_t*) ; 
 size_t FUNC1 (struct net const*) ; 
 int /*<<< orphan*/  FUNC2 (struct net const*,struct nft_set const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct nft_bitmap* FUNC4 (struct nft_set const*) ; 

__attribute__((used)) static void FUNC5(const struct net *net,
				const struct nft_set *set,
				const struct nft_set_elem *elem)
{
	struct nft_bitmap *priv = FUNC4(set);
	struct nft_bitmap_elem *be = elem->priv;
	u8 genmask = FUNC1(net);
	u32 idx, off;

	FUNC0(set, FUNC3(&be->ext), &idx, &off);
	/* Enter 11 state. */
	priv->bitmap[idx] |= (genmask << off);
	FUNC2(net, set, &be->ext);
}
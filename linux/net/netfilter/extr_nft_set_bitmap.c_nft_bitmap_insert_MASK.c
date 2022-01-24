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
struct nft_set_ext {int dummy; } ;
struct nft_set_elem {struct nft_bitmap_elem* priv; } ;
struct nft_set {int dummy; } ;
struct nft_bitmap_elem {int /*<<< orphan*/  head; struct nft_set_ext ext; } ;
struct nft_bitmap {size_t* bitmap; int /*<<< orphan*/  list; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nft_bitmap_elem* FUNC1 (struct nft_set const*,struct nft_bitmap_elem*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct nft_set const*,int /*<<< orphan*/ ,size_t*,size_t*) ; 
 size_t FUNC3 (struct net const*) ; 
 int /*<<< orphan*/  FUNC4 (struct nft_set_ext*) ; 
 struct nft_bitmap* FUNC5 (struct nft_set const*) ; 

__attribute__((used)) static int FUNC6(const struct net *net, const struct nft_set *set,
			     const struct nft_set_elem *elem,
			     struct nft_set_ext **ext)
{
	struct nft_bitmap *priv = FUNC5(set);
	struct nft_bitmap_elem *new = elem->priv, *be;
	u8 genmask = FUNC3(net);
	u32 idx, off;

	be = FUNC1(set, new, genmask);
	if (be) {
		*ext = &be->ext;
		return -EEXIST;
	}

	FUNC2(set, FUNC4(&new->ext), &idx, &off);
	/* Enter 01 state. */
	priv->bitmap[idx] |= (genmask << off);
	FUNC0(&new->head, &priv->list);

	return 0;
}
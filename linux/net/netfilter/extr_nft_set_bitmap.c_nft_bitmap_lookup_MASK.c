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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nft_set_ext {int dummy; } ;
struct nft_set {int dummy; } ;
struct nft_bitmap {int /*<<< orphan*/  bitmap; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nft_set const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net const*) ; 
 struct nft_bitmap* FUNC3 (struct nft_set const*) ; 

__attribute__((used)) static bool FUNC4(const struct net *net, const struct nft_set *set,
			      const u32 *key, const struct nft_set_ext **ext)
{
	const struct nft_bitmap *priv = FUNC3(set);
	u8 genmask = FUNC2(net);
	u32 idx, off;

	FUNC1(set, key, &idx, &off);

	return FUNC0(priv->bitmap, idx, off, genmask);
}
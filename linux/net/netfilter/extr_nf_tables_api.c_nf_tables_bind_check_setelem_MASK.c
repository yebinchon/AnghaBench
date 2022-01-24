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
struct nft_set_iter {int dummy; } ;
struct nft_set_ext {int dummy; } ;
struct nft_set_elem {int /*<<< orphan*/  priv; } ;
struct nft_set {scalar_t__ dtype; int /*<<< orphan*/  dlen; } ;
struct nft_ctx {int dummy; } ;
typedef  enum nft_registers { ____Placeholder_nft_registers } nft_registers ;

/* Variables and functions */
 scalar_t__ NFT_DATA_VALUE ; 
 scalar_t__ NFT_DATA_VERDICT ; 
 struct nft_set_ext* FUNC0 (struct nft_set*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nft_set_ext const*) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (struct nft_ctx const*,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct nft_ctx *ctx,
					struct nft_set *set,
					const struct nft_set_iter *iter,
					struct nft_set_elem *elem)
{
	const struct nft_set_ext *ext = FUNC0(set, elem->priv);
	enum nft_registers dreg;

	dreg = FUNC2(set->dtype);
	return FUNC3(ctx, dreg, FUNC1(ext),
					   set->dtype == NFT_DATA_VERDICT ?
					   NFT_DATA_VERDICT : NFT_DATA_VALUE,
					   set->dlen);
}
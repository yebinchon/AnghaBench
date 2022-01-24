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
struct nft_set_ext {int dummy; } ;
struct nft_set {int dummy; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFT_SET_EXT_EXPR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct nft_ctx const*,int /*<<< orphan*/ ) ; 
 struct nft_set_ext* FUNC2 (struct nft_set const*,void*) ; 
 scalar_t__ FUNC3 (struct nft_set_ext*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nft_set_ext*) ; 

__attribute__((used)) static void FUNC5(const struct nft_ctx *ctx,
				       const struct nft_set *set, void *elem)
{
	struct nft_set_ext *ext = FUNC2(set, elem);

	if (FUNC3(ext, NFT_SET_EXT_EXPR))
		FUNC1(ctx, FUNC4(ext));
	FUNC0(elem);
}
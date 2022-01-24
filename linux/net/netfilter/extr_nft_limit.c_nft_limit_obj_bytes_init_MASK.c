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
struct nlattr {int dummy; } ;
struct nft_object {int dummy; } ;
struct nft_limit {int dummy; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nft_limit*,struct nlattr const* const*,int) ; 
 struct nft_limit* FUNC1 (struct nft_object*) ; 

__attribute__((used)) static int FUNC2(const struct nft_ctx *ctx,
				    const struct nlattr * const tb[],
				    struct nft_object *obj)
{
	struct nft_limit *priv = FUNC1(obj);

	return FUNC0(priv, tb, false);
}
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
struct nft_set_desc {int /*<<< orphan*/  size; } ;
struct nft_set {int dummy; } ;
struct nft_hash {int /*<<< orphan*/  seed; int /*<<< orphan*/  buckets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nft_hash* FUNC2 (struct nft_set const*) ; 

__attribute__((used)) static int FUNC3(const struct nft_set *set,
			 const struct nft_set_desc *desc,
			 const struct nlattr * const tb[])
{
	struct nft_hash *priv = FUNC2(set);

	priv->buckets = FUNC1(desc->size);
	FUNC0(&priv->seed, sizeof(priv->seed));

	return 0;
}
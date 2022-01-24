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
struct rhashtable_iter {int dummy; } ;
struct nft_set_iter {scalar_t__ count; scalar_t__ skip; int /*<<< orphan*/  err; int /*<<< orphan*/  (* fn ) (struct nft_ctx const*,struct nft_set*,struct nft_set_iter*,struct nft_set_elem*) ;int /*<<< orphan*/  genmask; } ;
struct nft_set_elem {struct nft_rhash_elem* priv; } ;
struct nft_set {int dummy; } ;
struct nft_rhash_elem {int /*<<< orphan*/  ext; } ;
struct nft_rhash {int /*<<< orphan*/  ht; } ;
struct nft_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ FUNC0 (struct nft_rhash_elem*) ; 
 int /*<<< orphan*/  FUNC1 (struct nft_rhash_elem*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct nft_rhash* FUNC4 (struct nft_set*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC6 (struct rhashtable_iter*) ; 
 struct nft_rhash_elem* FUNC7 (struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC8 (struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC9 (struct rhashtable_iter*) ; 
 int /*<<< orphan*/  FUNC10 (struct nft_ctx const*,struct nft_set*,struct nft_set_iter*,struct nft_set_elem*) ; 

__attribute__((used)) static void FUNC11(const struct nft_ctx *ctx, struct nft_set *set,
			   struct nft_set_iter *iter)
{
	struct nft_rhash *priv = FUNC4(set);
	struct nft_rhash_elem *he;
	struct rhashtable_iter hti;
	struct nft_set_elem elem;

	FUNC5(&priv->ht, &hti);
	FUNC8(&hti);

	while ((he = FUNC7(&hti))) {
		if (FUNC0(he)) {
			if (FUNC1(he) != -EAGAIN) {
				iter->err = FUNC1(he);
				break;
			}

			continue;
		}

		if (iter->count < iter->skip)
			goto cont;
		if (FUNC3(&he->ext))
			goto cont;
		if (!FUNC2(&he->ext, iter->genmask))
			goto cont;

		elem.priv = he;

		iter->err = iter->fn(ctx, set, iter, &elem);
		if (iter->err < 0)
			break;

cont:
		iter->count++;
	}
	FUNC9(&hti);
	FUNC6(&hti);
}
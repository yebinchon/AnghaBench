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
struct nft_set {int dummy; } ;
struct nft_rhash {int /*<<< orphan*/  ht; int /*<<< orphan*/  gc_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nft_rhash_elem_destroy ; 
 struct nft_rhash* FUNC1 (struct nft_set const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC4(const struct nft_set *set)
{
	struct nft_rhash *priv = FUNC1(set);

	FUNC0(&priv->gc_work);
	FUNC2();
	FUNC3(&priv->ht, nft_rhash_elem_destroy,
				    (void *)set);
}
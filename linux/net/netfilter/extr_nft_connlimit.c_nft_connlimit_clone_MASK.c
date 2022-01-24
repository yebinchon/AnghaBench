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
typedef  struct nft_expr const nft_expr ;
struct nft_connlimit {int /*<<< orphan*/  invert; int /*<<< orphan*/  limit; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nft_connlimit* FUNC1 (struct nft_expr const*) ; 

__attribute__((used)) static int FUNC2(struct nft_expr *dst, const struct nft_expr *src)
{
	struct nft_connlimit *priv_dst = FUNC1(dst);
	struct nft_connlimit *priv_src = FUNC1(src);

	FUNC0(&priv_dst->list);
	priv_dst->limit	 = priv_src->limit;
	priv_dst->invert = priv_src->invert;

	return 0;
}
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
typedef  int /*<<< orphan*/  u64 ;
struct nft_set_ext {int dummy; } ;
struct nft_set {int /*<<< orphan*/  nelems; scalar_t__ size; int /*<<< orphan*/  timeout; } ;
struct nft_regs {int /*<<< orphan*/ * data; } ;
struct nft_expr {int dummy; } ;
struct nft_dynset {size_t sreg_key; size_t sreg_data; int /*<<< orphan*/ * expr; int /*<<< orphan*/  tmpl; scalar_t__ timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nft_dynset* FUNC3 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC4 (struct nft_set*,void*,int) ; 
 struct nft_set_ext* FUNC5 (struct nft_set*,void*) ; 
 void* FUNC6 (struct nft_set*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nft_set_ext*) ; 

__attribute__((used)) static void *FUNC8(struct nft_set *set, const struct nft_expr *expr,
			    struct nft_regs *regs)
{
	const struct nft_dynset *priv = FUNC3(expr);
	struct nft_set_ext *ext;
	u64 timeout;
	void *elem;

	if (!FUNC0(&set->nelems, 1, set->size))
		return NULL;

	timeout = priv->timeout ? : set->timeout;
	elem = FUNC6(set, &priv->tmpl,
				 &regs->data[priv->sreg_key],
				 &regs->data[priv->sreg_data],
				 timeout, 0, GFP_ATOMIC);
	if (elem == NULL)
		goto err1;

	ext = FUNC5(set, elem);
	if (priv->expr != NULL &&
	    FUNC2(FUNC7(ext), priv->expr) < 0)
		goto err2;

	return elem;

err2:
	FUNC4(set, elem, false);
err1:
	if (set->size)
		FUNC1(&set->nelems);
	return NULL;
}
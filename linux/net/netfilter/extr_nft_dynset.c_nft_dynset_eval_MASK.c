#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct nft_set_ext {int dummy; } ;
struct nft_set {scalar_t__ timeout; TYPE_1__* ops; } ;
struct TYPE_6__ {void* code; } ;
struct nft_regs {TYPE_3__ verdict; int /*<<< orphan*/ * data; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_expr {TYPE_2__* ops; } ;
struct nft_dynset {scalar_t__ op; size_t sreg_key; scalar_t__ invert; scalar_t__ timeout; struct nft_set* set; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* eval ) (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo const*) ;} ;
struct TYPE_4__ {scalar_t__ (* update ) (struct nft_set*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nft_expr const*,struct nft_regs*,struct nft_set_ext const**) ;int /*<<< orphan*/  (* delete ) (struct nft_set*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 void* NFT_BREAK ; 
 scalar_t__ NFT_DYNSET_OP_DELETE ; 
 scalar_t__ NFT_DYNSET_OP_UPDATE ; 
 int /*<<< orphan*/  NFT_SET_EXT_EXPIRATION ; 
 int /*<<< orphan*/  NFT_SET_EXT_EXPR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  nft_dynset_new ; 
 struct nft_dynset* FUNC1 (struct nft_expr const*) ; 
 scalar_t__ FUNC2 (struct nft_set_ext const*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC3 (struct nft_set_ext const*) ; 
 struct nft_expr* FUNC4 (struct nft_set_ext const*) ; 
 int /*<<< orphan*/  FUNC5 (struct nft_set*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct nft_set*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nft_expr const*,struct nft_regs*,struct nft_set_ext const**) ; 
 int /*<<< orphan*/  FUNC7 (struct nft_expr const*,struct nft_regs*,struct nft_pktinfo const*) ; 

void FUNC8(const struct nft_expr *expr,
		     struct nft_regs *regs, const struct nft_pktinfo *pkt)
{
	const struct nft_dynset *priv = FUNC1(expr);
	struct nft_set *set = priv->set;
	const struct nft_set_ext *ext;
	const struct nft_expr *sexpr;
	u64 timeout;

	if (priv->op == NFT_DYNSET_OP_DELETE) {
		set->ops->delete(set, &regs->data[priv->sreg_key]);
		return;
	}

	if (set->ops->update(set, &regs->data[priv->sreg_key], nft_dynset_new,
			     expr, regs, &ext)) {
		sexpr = NULL;
		if (FUNC2(ext, NFT_SET_EXT_EXPR))
			sexpr = FUNC4(ext);

		if (priv->op == NFT_DYNSET_OP_UPDATE &&
		    FUNC2(ext, NFT_SET_EXT_EXPIRATION)) {
			timeout = priv->timeout ? : set->timeout;
			*FUNC3(ext) = FUNC0() + timeout;
		}

		if (sexpr != NULL)
			sexpr->ops->eval(sexpr, regs, pkt);

		if (priv->invert)
			regs->verdict.code = NFT_BREAK;
		return;
	}

	if (!priv->invert)
		regs->verdict.code = NFT_BREAK;
}
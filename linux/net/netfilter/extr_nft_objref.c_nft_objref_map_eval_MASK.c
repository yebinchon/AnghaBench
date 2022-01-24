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
struct nft_set_ext {int dummy; } ;
struct nft_set {TYPE_1__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  code; } ;
struct nft_regs {TYPE_2__ verdict; int /*<<< orphan*/ * data; } ;
struct nft_pktinfo {int dummy; } ;
struct nft_objref_map {size_t sreg; struct nft_set* set; } ;
struct nft_object {TYPE_3__* ops; } ;
struct nft_expr {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* eval ) (struct nft_object*,struct nft_regs*,struct nft_pktinfo const*) ;} ;
struct TYPE_4__ {int (* lookup ) (int /*<<< orphan*/ ,struct nft_set const*,int /*<<< orphan*/ *,struct nft_set_ext const**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NFT_BREAK ; 
 struct nft_objref_map* FUNC0 (struct nft_expr const*) ; 
 int /*<<< orphan*/  FUNC1 (struct nft_pktinfo const*) ; 
 struct nft_object** FUNC2 (struct nft_set_ext const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nft_set const*,int /*<<< orphan*/ *,struct nft_set_ext const**) ; 
 int /*<<< orphan*/  FUNC4 (struct nft_object*,struct nft_regs*,struct nft_pktinfo const*) ; 

__attribute__((used)) static void FUNC5(const struct nft_expr *expr,
				struct nft_regs *regs,
				const struct nft_pktinfo *pkt)
{
	struct nft_objref_map *priv = FUNC0(expr);
	const struct nft_set *set = priv->set;
	const struct nft_set_ext *ext;
	struct nft_object *obj;
	bool found;

	found = set->ops->lookup(FUNC1(pkt), set, &regs->data[priv->sreg],
				 &ext);
	if (!found) {
		regs->verdict.code = NFT_BREAK;
		return;
	}
	obj = *FUNC2(ext);
	obj->ops->eval(obj, regs, pkt);
}
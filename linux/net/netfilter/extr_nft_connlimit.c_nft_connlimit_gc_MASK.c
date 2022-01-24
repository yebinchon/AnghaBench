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
struct nft_expr {int dummy; } ;
struct nft_connlimit {int /*<<< orphan*/  list; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct net*,int /*<<< orphan*/ *) ; 
 struct nft_connlimit* FUNC3 (struct nft_expr const*) ; 

__attribute__((used)) static bool FUNC4(struct net *net, const struct nft_expr *expr)
{
	struct nft_connlimit *priv = FUNC3(expr);
	bool ret;

	FUNC0();
	ret = FUNC2(net, &priv->list);
	FUNC1();

	return ret;
}
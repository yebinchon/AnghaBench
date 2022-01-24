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
typedef  int /*<<< orphan*/  u8 ;
struct nlattr {int dummy; } ;
struct nft_expr_type {int /*<<< orphan*/  owner; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 struct nft_expr_type const* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nft_expr_type* FUNC1 (int /*<<< orphan*/ ,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ ,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct nft_expr_type *FUNC8(struct net *net,
						     u8 family,
						     struct nlattr *nla)
{
	const struct nft_expr_type *type;

	if (nla == NULL)
		return FUNC0(-EINVAL);

	type = FUNC1(family, nla);
	if (type != NULL && FUNC7(type->owner))
		return type;

	FUNC2();
#ifdef CONFIG_MODULES
	if (type == NULL) {
		if (nft_expr_type_request_module(net, family, nla) == -EAGAIN)
			return ERR_PTR(-EAGAIN);

		nft_request_module(net, "nft-expr-%.*s",
				   nla_len(nla), (char *)nla_data(nla));
		if (__nft_expr_type_get(family, nla))
			return ERR_PTR(-EAGAIN);
	}
#endif
	return FUNC0(-ENOENT);
}
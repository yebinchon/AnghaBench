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
struct nft_rule {int dummy; } ;
struct nft_chain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct nft_rule* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nft_rule* FUNC1 (struct nft_chain const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr const*) ; 

__attribute__((used)) static struct nft_rule *FUNC4(const struct nft_chain *chain,
					const struct nlattr *nla)
{
	if (nla == NULL)
		return FUNC0(-EINVAL);

	return FUNC1(chain, FUNC2(FUNC3(nla)));
}
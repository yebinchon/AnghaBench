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

/* Variables and functions */
 int /*<<< orphan*/  NFTA_SET_DESC_MAX ; 
 size_t NFTA_SET_DESC_SIZE ; 
 int /*<<< orphan*/  nft_set_desc_policy ; 
 int /*<<< orphan*/  FUNC0 (struct nlattr*) ; 
 int FUNC1 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct nft_set_desc *desc,
				    const struct nlattr *nla)
{
	struct nlattr *da[NFTA_SET_DESC_MAX + 1];
	int err;

	err = FUNC1(da, NFTA_SET_DESC_MAX, nla,
					  nft_set_desc_policy, NULL);
	if (err < 0)
		return err;

	if (da[NFTA_SET_DESC_SIZE] != NULL)
		desc->size = FUNC2(FUNC0(da[NFTA_SET_DESC_SIZE]));

	return 0;
}
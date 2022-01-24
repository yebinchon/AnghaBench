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
typedef  int /*<<< orphan*/  u32 ;
struct nlattr {int dummy; } ;
struct nft_set_desc {int dummy; } ;

/* Variables and functions */
 size_t NFTA_SET_KEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC3(const struct nlattr * const nla[],
			       const struct nft_set_desc *desc)
{
	u32 klen = FUNC2(FUNC1(nla[NFTA_SET_KEY_LEN]));

	return FUNC0(klen);
}
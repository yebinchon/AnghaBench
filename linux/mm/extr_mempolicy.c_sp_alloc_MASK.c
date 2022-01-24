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
struct sp_node {int dummy; } ;
struct mempolicy {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mempolicy*) ; 
 int /*<<< orphan*/  MPOL_F_SHARED ; 
 struct sp_node* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sp_node*) ; 
 struct mempolicy* FUNC3 (struct mempolicy*) ; 
 int /*<<< orphan*/  sn_cache ; 
 int /*<<< orphan*/  FUNC4 (struct sp_node*,unsigned long,unsigned long,struct mempolicy*) ; 

__attribute__((used)) static struct sp_node *FUNC5(unsigned long start, unsigned long end,
				struct mempolicy *pol)
{
	struct sp_node *n;
	struct mempolicy *newpol;

	n = FUNC1(sn_cache, GFP_KERNEL);
	if (!n)
		return NULL;

	newpol = FUNC3(pol);
	if (FUNC0(newpol)) {
		FUNC2(sn_cache, n);
		return NULL;
	}
	newpol->flags |= MPOL_F_SHARED;
	FUNC4(n, start, end, newpol);

	return n;
}
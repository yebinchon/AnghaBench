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
struct rpc_cred {int /*<<< orphan*/  cr_lru; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  number_cred_unused ; 

__attribute__((used)) static void
FUNC2(struct rpc_cred *cred)
{
	if (FUNC1(&cred->cr_lru))
		return;
	number_cred_unused--;
	FUNC0(&cred->cr_lru);
}
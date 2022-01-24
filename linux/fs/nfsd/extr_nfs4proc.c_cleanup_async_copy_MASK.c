#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfsd4_copy {TYPE_1__* cp_clp; int /*<<< orphan*/  copies; int /*<<< orphan*/  nf_src; int /*<<< orphan*/  nf_dst; } ;
struct TYPE_2__ {int /*<<< orphan*/  async_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsd4_copy*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsd4_copy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct nfsd4_copy *copy)
{
	FUNC1(copy);
	FUNC3(copy->nf_dst);
	FUNC3(copy->nf_src);
	FUNC4(&copy->cp_clp->async_lock);
	FUNC0(&copy->copies);
	FUNC5(&copy->cp_clp->async_lock);
	FUNC2(copy);
}
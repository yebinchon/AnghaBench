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
struct nfs4_clnt_odstate {int /*<<< orphan*/  co_odcount; struct nfs4_client* co_client; } ;
struct nfs4_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nfs4_clnt_odstate* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  odstate_slab ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct nfs4_clnt_odstate *
FUNC2(struct nfs4_client *clp)
{
	struct nfs4_clnt_odstate *co;

	co = FUNC0(odstate_slab, GFP_KERNEL);
	if (co) {
		co->co_client = clp;
		FUNC1(&co->co_odcount, 1);
	}
	return co;
}
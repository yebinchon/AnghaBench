#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  use; } ;
struct nf_conn {TYPE_1__ ct_general; } ;
struct TYPE_4__ {int /*<<< orphan*/  count; } ;
struct net {TYPE_2__ ct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct nf_conn*) ; 
 int /*<<< orphan*/  nf_conntrack_cachep ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conn*) ; 
 struct net* FUNC6 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(struct nf_conn *ct)
{
	struct net *net = FUNC6(ct);

	/* A freed object has refcnt == 0, that's
	 * the golden rule for SLAB_TYPESAFE_BY_RCU
	 */
	FUNC0(FUNC2(&ct->ct_general.use) != 0);

	FUNC4(ct);
	FUNC5(ct);
	FUNC3(nf_conntrack_cachep, ct);
	FUNC7();
	FUNC1(&net->ct.count);
}
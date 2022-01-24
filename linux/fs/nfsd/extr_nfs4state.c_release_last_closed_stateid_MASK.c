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
struct nfsd_net {int /*<<< orphan*/  client_lock; } ;
struct TYPE_4__ {TYPE_1__* so_client; } ;
struct nfs4_openowner {struct nfs4_ol_stateid* oo_last_closed_stid; int /*<<< orphan*/  oo_close_lru; TYPE_2__ oo_owner; } ;
struct nfs4_ol_stateid {int /*<<< orphan*/  st_stid; } ;
struct TYPE_3__ {int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nfsd_net* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct nfs4_openowner *oo)
{
	struct nfsd_net *nn = FUNC1(oo->oo_owner.so_client->net,
					  nfsd_net_id);
	struct nfs4_ol_stateid *s;

	FUNC3(&nn->client_lock);
	s = oo->oo_last_closed_stid;
	if (s) {
		FUNC0(&oo->oo_close_lru);
		oo->oo_last_closed_stid = NULL;
	}
	FUNC4(&nn->client_lock);
	if (s)
		FUNC2(&s->st_stid);
}
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
struct TYPE_3__ {int so_id; int /*<<< orphan*/  so_clid; } ;
struct TYPE_4__ {TYPE_1__ si_opaque; } ;
struct nfs4_stid {void (* sc_free ) (struct nfs4_stid*) ;int /*<<< orphan*/  sc_lock; int /*<<< orphan*/  sc_count; TYPE_2__ sc_stateid; struct nfs4_client* sc_client; } ;
struct nfs4_client {int /*<<< orphan*/  cl_clientid; int /*<<< orphan*/  cl_lock; int /*<<< orphan*/  cl_stateids; } ;
struct kmem_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int FUNC0 (int /*<<< orphan*/ *,struct nfs4_stid*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct kmem_cache*,struct nfs4_stid*) ; 
 struct nfs4_stid* FUNC4 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct nfs4_stid *FUNC9(struct nfs4_client *cl, struct kmem_cache *slab,
				  void (*sc_free)(struct nfs4_stid *))
{
	struct nfs4_stid *stid;
	int new_id;

	stid = FUNC4(slab, GFP_KERNEL);
	if (!stid)
		return NULL;

	FUNC1(GFP_KERNEL);
	FUNC6(&cl->cl_lock);
	/* Reserving 0 for start of file in nfsdfs "states" file: */
	new_id = FUNC0(&cl->cl_stateids, stid, 1, 0, GFP_NOWAIT);
	FUNC8(&cl->cl_lock);
	FUNC2();
	if (new_id < 0)
		goto out_free;

	stid->sc_free = sc_free;
	stid->sc_client = cl;
	stid->sc_stateid.si_opaque.so_id = new_id;
	stid->sc_stateid.si_opaque.so_clid = cl->cl_clientid;
	/* Will be incremented before return to client: */
	FUNC5(&stid->sc_count, 1);
	FUNC7(&stid->sc_lock);

	/*
	 * It shouldn't be a problem to reuse an opaque stateid value.
	 * I don't think it is for 4.1.  But with 4.0 I worry that, for
	 * example, a stray write retransmission could be accepted by
	 * the server when it should have been rejected.  Therefore,
	 * adopt a trick from the sctp code to attempt to maximize the
	 * amount of time until an id is reused, by ensuring they always
	 * "increase" (mod INT_MAX):
	 */
	return stid;
out_free:
	FUNC3(slab, stid);
	return NULL;
}
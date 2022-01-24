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
struct nfsd_net {int /*<<< orphan*/  client_lock; } ;
struct nfsd4_session {int /*<<< orphan*/  se_ref; struct nfs4_client* se_client; } ;
struct nfs4_client {int /*<<< orphan*/  net; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsd4_session*) ; 
 scalar_t__ FUNC2 (struct nfsd4_session*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct nfsd_net* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC5 (struct nfs4_client*) ; 

__attribute__((used)) static void FUNC6(struct nfsd4_session *ses)
{
	struct nfs4_client *clp = ses->se_client;
	struct nfsd_net *nn = FUNC4(clp->net, nfsd_net_id);

	FUNC3(&nn->client_lock);

	if (FUNC0(&ses->se_ref) && FUNC2(ses))
		FUNC1(ses);
	FUNC5(clp);
}
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
struct nfsd4_session {struct nfs4_client* se_client; int /*<<< orphan*/  se_perclnt; int /*<<< orphan*/  se_hash; } ;
struct nfs4_client {int /*<<< orphan*/  cl_lock; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nfsd_net* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct nfsd4_session *ses)
{
	struct nfs4_client *clp = ses->se_client;
	struct nfsd_net *nn = FUNC2(clp->net, nfsd_net_id);

	FUNC1(&nn->client_lock);

	FUNC0(&ses->se_hash);
	FUNC3(&ses->se_client->cl_lock);
	FUNC0(&ses->se_perclnt);
	FUNC4(&ses->se_client->cl_lock);
}
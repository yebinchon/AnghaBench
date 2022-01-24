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
struct TYPE_2__ {int block_opens; int /*<<< orphan*/  list; } ;
struct nfsd_net {int grace_ended; int /*<<< orphan*/ * conf_id_hashtbl; int /*<<< orphan*/ * unconf_id_hashtbl; int /*<<< orphan*/  laundromat_work; int /*<<< orphan*/  blocked_locks_lru; int /*<<< orphan*/  blocked_locks_lock; int /*<<< orphan*/  s2s_cp_stateids; int /*<<< orphan*/  s2s_cp_lock; int /*<<< orphan*/  client_lock; int /*<<< orphan*/  del_recall_lru; int /*<<< orphan*/  close_lru; int /*<<< orphan*/  client_lru; TYPE_1__ nfsd4_manager; int /*<<< orphan*/  boot_time; void* unconf_name_tree; void* conf_name_tree; int /*<<< orphan*/ * sessionid_hashtbl; } ;
struct net {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int CLIENT_HASH_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* RB_ROOT ; 
 int SESSION_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  laundromat_main ; 
 struct nfsd_net* FUNC7 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net *net)
{
	struct nfsd_net *nn = FUNC7(net, nfsd_net_id);
	int i;

	nn->conf_id_hashtbl = FUNC6(CLIENT_HASH_SIZE,
					    sizeof(struct list_head),
					    GFP_KERNEL);
	if (!nn->conf_id_hashtbl)
		goto err;
	nn->unconf_id_hashtbl = FUNC6(CLIENT_HASH_SIZE,
					      sizeof(struct list_head),
					      GFP_KERNEL);
	if (!nn->unconf_id_hashtbl)
		goto err_unconf_id;
	nn->sessionid_hashtbl = FUNC6(SESSION_HASH_SIZE,
					      sizeof(struct list_head),
					      GFP_KERNEL);
	if (!nn->sessionid_hashtbl)
		goto err_sessionid;

	for (i = 0; i < CLIENT_HASH_SIZE; i++) {
		FUNC1(&nn->conf_id_hashtbl[i]);
		FUNC1(&nn->unconf_id_hashtbl[i]);
	}
	for (i = 0; i < SESSION_HASH_SIZE; i++)
		FUNC1(&nn->sessionid_hashtbl[i]);
	nn->conf_name_tree = RB_ROOT;
	nn->unconf_name_tree = RB_ROOT;
	nn->boot_time = FUNC3();
	nn->grace_ended = false;
	nn->nfsd4_manager.block_opens = true;
	FUNC1(&nn->nfsd4_manager.list);
	FUNC1(&nn->client_lru);
	FUNC1(&nn->close_lru);
	FUNC1(&nn->del_recall_lru);
	FUNC8(&nn->client_lock);
	FUNC8(&nn->s2s_cp_lock);
	FUNC4(&nn->s2s_cp_stateids);

	FUNC8(&nn->blocked_locks_lock);
	FUNC1(&nn->blocked_locks_lru);

	FUNC0(&nn->laundromat_work, laundromat_main);
	FUNC2(net);

	return 0;

err_sessionid:
	FUNC5(nn->unconf_id_hashtbl);
err_unconf_id:
	FUNC5(nn->conf_id_hashtbl);
err:
	return -ENOMEM;
}
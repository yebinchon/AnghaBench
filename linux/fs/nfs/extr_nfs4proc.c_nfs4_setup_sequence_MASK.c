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
struct rpc_task {int dummy; } ;
struct nfs_client {struct nfs4_slot_table* cl_slot_tbl; } ;
struct nfs4_slot_table {int /*<<< orphan*/  slot_tbl_lock; int /*<<< orphan*/  slot_tbl_waitq; } ;
struct nfs4_slot {int dummy; } ;
struct nfs4_session {struct nfs4_slot_table fc_slot_table; } ;
struct nfs4_sequence_res {int /*<<< orphan*/ * sr_slot; } ;
struct nfs4_sequence_args {scalar_t__ sa_privileged; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct nfs4_slot* FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 scalar_t__ FUNC1 (struct nfs4_slot*) ; 
 int /*<<< orphan*/  RPC_PRIORITY_PRIVILEGED ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_sequence_res*) ; 
 struct nfs4_slot* FUNC3 (struct nfs4_slot_table*) ; 
 struct nfs4_session* FUNC4 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs4_sequence_args*,struct nfs4_sequence_res*,struct nfs4_slot*) ; 
 scalar_t__ FUNC6 (struct nfs4_slot_table*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct rpc_task*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct rpc_task*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct rpc_task*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct nfs4_session*,struct nfs4_sequence_args*) ; 

int FUNC15(struct nfs_client *client,
			struct nfs4_sequence_args *args,
			struct nfs4_sequence_res *res,
			struct rpc_task *task)
{
	struct nfs4_session *session = FUNC4(client);
	struct nfs4_slot_table *tbl  = client->cl_slot_tbl;
	struct nfs4_slot *slot;

	/* slot already allocated? */
	if (res->sr_slot != NULL)
		goto out_start;

	if (session)
		tbl = &session->fc_slot_table;

	FUNC12(&tbl->slot_tbl_lock);
	/* The state manager will wait until the slot table is empty */
	if (FUNC6(tbl) && !args->sa_privileged)
		goto out_sleep;

	slot = FUNC3(tbl);
	if (FUNC1(slot)) {
		if (slot == FUNC0(-ENOMEM))
			goto out_sleep_timeout;
		goto out_sleep;
	}
	FUNC13(&tbl->slot_tbl_lock);

	FUNC5(args, res, slot);

	FUNC14(session, args);
out_start:
	FUNC2(res);
	FUNC7(task);
	return 0;
out_sleep_timeout:
	/* Try again in 1/4 second */
	if (args->sa_privileged)
		FUNC10(&tbl->slot_tbl_waitq, task,
				jiffies + (HZ >> 2), RPC_PRIORITY_PRIVILEGED);
	else
		FUNC11(&tbl->slot_tbl_waitq, task,
				NULL, jiffies + (HZ >> 2));
	FUNC13(&tbl->slot_tbl_lock);
	return -EAGAIN;
out_sleep:
	if (args->sa_privileged)
		FUNC9(&tbl->slot_tbl_waitq, task,
				RPC_PRIORITY_PRIVILEGED);
	else
		FUNC8(&tbl->slot_tbl_waitq, task, NULL);
	FUNC13(&tbl->slot_tbl_lock);
	return -EAGAIN;
}
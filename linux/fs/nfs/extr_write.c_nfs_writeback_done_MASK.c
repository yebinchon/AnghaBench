#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {scalar_t__ tk_status; } ;
struct TYPE_10__ {scalar_t__ stable; int /*<<< orphan*/  offset; } ;
struct TYPE_9__ {TYPE_4__* verf; int /*<<< orphan*/  count; } ;
struct nfs_pgio_header {TYPE_3__ args; TYPE_2__ res; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_14__ {int /*<<< orphan*/  cache_validity; } ;
struct TYPE_13__ {int (* write_done ) (struct rpc_task*,struct nfs_pgio_header*) ;} ;
struct TYPE_12__ {TYPE_1__* nfs_client; } ;
struct TYPE_11__ {scalar_t__ committed; } ;
struct TYPE_8__ {int /*<<< orphan*/  cl_hostname; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  NFSIOS_SERVERWRITTENBYTES ; 
 TYPE_7__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_INVALID_OTHER ; 
 TYPE_6__* FUNC1 (struct inode*) ; 
 TYPE_5__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct rpc_task*,struct nfs_pgio_header*) ; 
 scalar_t__ FUNC9 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,scalar_t__,int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static int FUNC11(struct rpc_task *task,
			      struct nfs_pgio_header *hdr,
			      struct inode *inode)
{
	int status;

	/*
	 * ->write_done will attempt to use post-op attributes to detect
	 * conflicting writes by other clients.  A strict interpretation
	 * of close-to-open would allow us to continue caching even if
	 * another writer had changed the file, but some applications
	 * depend on tighter cache coherency when writing.
	 */
	status = FUNC1(inode)->write_done(task, hdr);
	if (status != 0)
		return status;

	FUNC4(inode, NFSIOS_SERVERWRITTENBYTES, hdr->res.count);
	FUNC10(inode, task->tk_status,
				 hdr->args.offset, hdr->res.verf);

	if (hdr->res.verf->committed < hdr->args.stable &&
	    task->tk_status >= 0) {
		/* We tried a write call, but the server did not
		 * commit data to stable storage even though we
		 * requested it.
		 * Note: There is a known bug in Tru64 < 5.0 in which
		 *	 the server reports NFS_DATA_SYNC, but performs
		 *	 NFS_FILE_SYNC. We therefore implement this checking
		 *	 as a dprintk() in order to avoid filling syslog.
		 */
		static unsigned long    complain;

		/* Note this will print the MDS for a DS write */
		if (FUNC9(complain, jiffies)) {
			FUNC3("NFS:       faulty NFS server %s:"
				" (committed = %d) != (stable = %d)\n",
				FUNC2(inode)->nfs_client->cl_hostname,
				hdr->res.verf->committed, hdr->args.stable);
			complain = jiffies + 300 * HZ;
		}
	}

	/* Deal with the suid/sgid bit corner case */
	if (FUNC5(inode)) {
		FUNC6(&inode->i_lock);
		FUNC0(inode)->cache_validity |= NFS_INO_INVALID_OTHER;
		FUNC7(&inode->i_lock);
	}
	return 0;
}
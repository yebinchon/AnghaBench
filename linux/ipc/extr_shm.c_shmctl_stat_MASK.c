#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int id; } ;
struct shmid_kernel {int shm_atim; int shm_dtim; int shm_ctim; TYPE_1__ shm_perm; int /*<<< orphan*/  shm_nattch; int /*<<< orphan*/  shm_lprid; int /*<<< orphan*/  shm_cprid; int /*<<< orphan*/  shm_segsz; } ;
struct shmid64_ds {int shm_atime; int shm_dtime; int shm_ctime; int shm_atime_high; int shm_dtime_high; int shm_ctime_high; int /*<<< orphan*/  shm_nattch; void* shm_lpid; void* shm_cpid; int /*<<< orphan*/  shm_segsz; int /*<<< orphan*/  shm_perm; } ;
struct ipc_namespace {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int EIDRM ; 
 int IPC_STAT ; 
 scalar_t__ FUNC0 (struct shmid_kernel*) ; 
 int FUNC1 (struct shmid_kernel*) ; 
 int SHM_STAT ; 
 int SHM_STAT_ANY ; 
 int /*<<< orphan*/  S_IRUGO ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct ipc_namespace*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct shmid64_ds*,int /*<<< orphan*/ ,int) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (TYPE_1__*,int) ; 
 struct shmid_kernel* FUNC13 (struct ipc_namespace*,int) ; 
 struct shmid_kernel* FUNC14 (struct ipc_namespace*,int) ; 

__attribute__((used)) static int FUNC15(struct ipc_namespace *ns, int shmid,
			int cmd, struct shmid64_ds *tbuf)
{
	struct shmid_kernel *shp;
	int err;

	FUNC8(tbuf, 0, sizeof(*tbuf));

	FUNC10();
	if (cmd == SHM_STAT || cmd == SHM_STAT_ANY) {
		shp = FUNC13(ns, shmid);
		if (FUNC0(shp)) {
			err = FUNC1(shp);
			goto out_unlock;
		}
	} else { /* IPC_STAT */
		shp = FUNC14(ns, shmid);
		if (FUNC0(shp)) {
			err = FUNC1(shp);
			goto out_unlock;
		}
	}

	/*
	 * Semantically SHM_STAT_ANY ought to be identical to
	 * that functionality provided by the /proc/sysvipc/
	 * interface. As such, only audit these calls and
	 * do not do traditional S_IRUGO permission checks on
	 * the ipc object.
	 */
	if (cmd == SHM_STAT_ANY)
		FUNC2(&shp->shm_perm);
	else {
		err = -EACCES;
		if (FUNC6(ns, &shp->shm_perm, S_IRUGO))
			goto out_unlock;
	}

	err = FUNC12(&shp->shm_perm, cmd);
	if (err)
		goto out_unlock;

	FUNC3(&shp->shm_perm);

	if (!FUNC5(&shp->shm_perm)) {
		FUNC4(&shp->shm_perm);
		err = -EIDRM;
		goto out_unlock;
	}

	FUNC7(&shp->shm_perm, &tbuf->shm_perm);
	tbuf->shm_segsz	= shp->shm_segsz;
	tbuf->shm_atime	= shp->shm_atim;
	tbuf->shm_dtime	= shp->shm_dtim;
	tbuf->shm_ctime	= shp->shm_ctim;
#ifndef CONFIG_64BIT
	tbuf->shm_atime_high = shp->shm_atim >> 32;
	tbuf->shm_dtime_high = shp->shm_dtim >> 32;
	tbuf->shm_ctime_high = shp->shm_ctim >> 32;
#endif
	tbuf->shm_cpid	= FUNC9(shp->shm_cprid);
	tbuf->shm_lpid	= FUNC9(shp->shm_lprid);
	tbuf->shm_nattch = shp->shm_nattch;

	if (cmd == IPC_STAT) {
		/*
		 * As defined in SUS:
		 * Return 0 on success
		 */
		err = 0;
	} else {
		/*
		 * SHM_STAT and SHM_STAT_ANY (both Linux specific)
		 * Return the full id, including the sequence number
		 */
		err = shp->shm_perm.id;
	}

	FUNC4(&shp->shm_perm);
out_unlock:
	FUNC11();
	return err;
}
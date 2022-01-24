#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct user_struct {int dummy; } ;
struct TYPE_6__ {int mode; int /*<<< orphan*/  cuid; int /*<<< orphan*/  uid; } ;
struct shmid_kernel {TYPE_1__ shm_perm; struct user_struct* mlock_user; struct file* shm_file; } ;
struct ipc_namespace {int /*<<< orphan*/  user_ns; } ;
struct file {int /*<<< orphan*/  f_mapping; } ;
typedef  int /*<<< orphan*/  kuid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IPC_LOCK ; 
 int EIDRM ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct shmid_kernel*) ; 
 int FUNC1 (struct shmid_kernel*) ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int SHM_LOCK ; 
 int SHM_LOCKED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct user_struct* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (struct file*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_1__*,int) ; 
 struct shmid_kernel* FUNC16 (struct ipc_namespace*,int) ; 
 int FUNC17 (struct file*,int,struct user_struct*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct ipc_namespace *ns, int shmid, int cmd)
{
	struct shmid_kernel *shp;
	struct file *shm_file;
	int err;

	FUNC12();
	shp = FUNC16(ns, shmid);
	if (FUNC0(shp)) {
		err = FUNC1(shp);
		goto out_unlock1;
	}

	FUNC2(&(shp->shm_perm));
	err = FUNC15(&shp->shm_perm, cmd);
	if (err)
		goto out_unlock1;

	FUNC7(&shp->shm_perm);

	/* check if shm_destroy() is tearing down shp */
	if (!FUNC9(&shp->shm_perm)) {
		err = -EIDRM;
		goto out_unlock0;
	}

	if (!FUNC11(ns->user_ns, CAP_IPC_LOCK)) {
		kuid_t euid = FUNC3();

		if (!FUNC19(euid, shp->shm_perm.uid) &&
		    !FUNC19(euid, shp->shm_perm.cuid)) {
			err = -EPERM;
			goto out_unlock0;
		}
		if (cmd == SHM_LOCK && !FUNC14(RLIMIT_MEMLOCK)) {
			err = -EPERM;
			goto out_unlock0;
		}
	}

	shm_file = shp->shm_file;
	if (FUNC10(shm_file))
		goto out_unlock0;

	if (cmd == SHM_LOCK) {
		struct user_struct *user = FUNC4();

		err = FUNC17(shm_file, 1, user);
		if (!err && !(shp->shm_perm.mode & SHM_LOCKED)) {
			shp->shm_perm.mode |= SHM_LOCKED;
			shp->mlock_user = user;
		}
		goto out_unlock0;
	}

	/* SHM_UNLOCK */
	if (!(shp->shm_perm.mode & SHM_LOCKED))
		goto out_unlock0;
	FUNC17(shm_file, 0, shp->mlock_user);
	shp->shm_perm.mode &= ~SHM_LOCKED;
	shp->mlock_user = NULL;
	FUNC6(shm_file);
	FUNC8(&shp->shm_perm);
	FUNC13();
	FUNC18(shm_file->f_mapping);

	FUNC5(shm_file);
	return err;

out_unlock0:
	FUNC8(&shp->shm_perm);
out_unlock1:
	FUNC13();
	return err;
}
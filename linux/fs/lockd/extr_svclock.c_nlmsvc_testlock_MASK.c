#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct svc_rqst {int dummy; } ;
struct nlm_lockowner {int /*<<< orphan*/  pid; } ;
struct TYPE_8__ {scalar_t__ fl_type; int /*<<< orphan*/ * fl_owner; scalar_t__ fl_end; scalar_t__ fl_start; } ;
struct TYPE_7__ {scalar_t__ len; } ;
struct nlm_lock {char* caller; TYPE_3__ fl; int /*<<< orphan*/  svid; TYPE_2__ oh; int /*<<< orphan*/  len; } ;
struct nlm_host {int dummy; } ;
struct nlm_file {int /*<<< orphan*/  f_file; } ;
struct nlm_cookie {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_9__ {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int FILE_LOCK_DEFERRED ; 
 scalar_t__ F_UNLCK ; 
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,long long,long long,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  nlm_granted ; 
 int /*<<< orphan*/  nlm_lck_denied ; 
 int /*<<< orphan*/  nlm_lck_denied_grace_period ; 
 int /*<<< orphan*/  nlm_lck_denied_nolocks ; 
 int /*<<< orphan*/  FUNC6 (struct nlm_lockowner*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__be32
FUNC9(struct svc_rqst *rqstp, struct nlm_file *file,
		struct nlm_host *host, struct nlm_lock *lock,
		struct nlm_lock *conflock, struct nlm_cookie *cookie)
{
	int			error;
	__be32			ret;
	struct nlm_lockowner	*test_owner;

	FUNC2("lockd: nlmsvc_testlock(%s/%ld, ty=%d, %Ld-%Ld)\n",
				FUNC4(file->f_file)->i_sb->s_id,
				FUNC4(file->f_file)->i_ino,
				lock->fl.fl_type,
				(long long)lock->fl.fl_start,
				(long long)lock->fl.fl_end);

	if (FUNC3(FUNC0(rqstp))) {
		ret = nlm_lck_denied_grace_period;
		goto out;
	}

	/* If there's a conflicting lock, remember to clean up the test lock */
	test_owner = (struct nlm_lockowner *)lock->fl.fl_owner;

	error = FUNC8(file->f_file, &lock->fl);
	if (error) {
		/* We can't currently deal with deferred test requests */
		if (error == FILE_LOCK_DEFERRED)
			FUNC1(1);

		ret = nlm_lck_denied_nolocks;
		goto out;
	}

	if (lock->fl.fl_type == F_UNLCK) {
		ret = nlm_granted;
		goto out;
	}

	FUNC2("lockd: conflicting lock(ty=%d, %Ld-%Ld)\n",
		lock->fl.fl_type, (long long)lock->fl.fl_start,
		(long long)lock->fl.fl_end);
	conflock->caller = "somehost";	/* FIXME */
	conflock->len = FUNC7(conflock->caller);
	conflock->oh.len = 0;		/* don't return OH info */
	conflock->svid = ((struct nlm_lockowner *)lock->fl.fl_owner)->pid;
	conflock->fl.fl_type = lock->fl.fl_type;
	conflock->fl.fl_start = lock->fl.fl_start;
	conflock->fl.fl_end = lock->fl.fl_end;
	FUNC5(&lock->fl);

	/* Clean up the test lock */
	lock->fl.fl_owner = NULL;
	FUNC6(test_owner);

	ret = nlm_lck_denied;
out:
	return ret;
}
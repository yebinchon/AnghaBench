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
typedef  scalar_t__ uid_t ;
struct key_user {int qnkeys; unsigned int qnbytes; int /*<<< orphan*/  lock; int /*<<< orphan*/  nikeys; int /*<<< orphan*/  nkeys; } ;
struct key {unsigned int quotalen; scalar_t__ state; int /*<<< orphan*/  sem; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; struct key_user* user; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;
typedef  int /*<<< orphan*/  key_serial_t ;
typedef  int /*<<< orphan*/  key_ref_t ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 long EACCES ; 
 long EDQUOT ; 
 long EINVAL ; 
 long ENOMEM ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_FLAG_IN_QUOTA ; 
 scalar_t__ KEY_IS_UNINSTANTIATED ; 
 int KEY_LOOKUP_CREATE ; 
 int KEY_LOOKUP_PARTIAL ; 
 int /*<<< orphan*/  KEY_NEED_SETATTR ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct key*) ; 
 unsigned int key_quota_maxbytes ; 
 unsigned int key_quota_maxkeys ; 
 unsigned int key_quota_root_maxbytes ; 
 unsigned int key_quota_root_maxkeys ; 
 struct key* FUNC11 (int /*<<< orphan*/ ) ; 
 struct key_user* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct key_user*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

long FUNC23(key_serial_t id, uid_t user, gid_t group)
{
	struct key_user *newowner, *zapowner = NULL;
	struct key *key;
	key_ref_t key_ref;
	long ret;
	kuid_t uid;
	kgid_t gid;

	uid = FUNC16(FUNC5(), user);
	gid = FUNC15(FUNC5(), group);
	ret = -EINVAL;
	if ((user != (uid_t) -1) && !FUNC21(uid))
		goto error;
	if ((group != (gid_t) -1) && !FUNC8(gid))
		goto error;

	ret = 0;
	if (user == (uid_t) -1 && group == (gid_t) -1)
		goto error;

	key_ref = FUNC14(id, KEY_LOOKUP_CREATE | KEY_LOOKUP_PARTIAL,
				  KEY_NEED_SETATTR);
	if (FUNC0(key_ref)) {
		ret = FUNC1(key_ref);
		goto error;
	}

	key = FUNC11(key_ref);

	/* make the changes with the locks held to prevent chown/chown races */
	ret = -EACCES;
	FUNC6(&key->sem);

	if (!FUNC4(CAP_SYS_ADMIN)) {
		/* only the sysadmin can chown a key to some other UID */
		if (user != (uid_t) -1 && !FUNC20(key->uid, uid))
			goto error_put;

		/* only the sysadmin can set the key's GID to a group other
		 * than one of those that the current process subscribes to */
		if (group != (gid_t) -1 && !FUNC7(gid, key->gid) && !FUNC9(gid))
			goto error_put;
	}

	/* change the UID */
	if (user != (uid_t) -1 && !FUNC20(uid, key->uid)) {
		ret = -ENOMEM;
		newowner = FUNC12(uid);
		if (!newowner)
			goto error_put;

		/* transfer the quota burden to the new user */
		if (FUNC19(KEY_FLAG_IN_QUOTA, &key->flags)) {
			unsigned maxkeys = FUNC20(uid, GLOBAL_ROOT_UID) ?
				key_quota_root_maxkeys : key_quota_maxkeys;
			unsigned maxbytes = FUNC20(uid, GLOBAL_ROOT_UID) ?
				key_quota_root_maxbytes : key_quota_maxbytes;

			FUNC17(&newowner->lock);
			if (newowner->qnkeys + 1 >= maxkeys ||
			    newowner->qnbytes + key->quotalen >= maxbytes ||
			    newowner->qnbytes + key->quotalen <
			    newowner->qnbytes)
				goto quota_overrun;

			newowner->qnkeys++;
			newowner->qnbytes += key->quotalen;
			FUNC18(&newowner->lock);

			FUNC17(&key->user->lock);
			key->user->qnkeys--;
			key->user->qnbytes -= key->quotalen;
			FUNC18(&key->user->lock);
		}

		FUNC2(&key->user->nkeys);
		FUNC3(&newowner->nkeys);

		if (key->state != KEY_IS_UNINSTANTIATED) {
			FUNC2(&key->user->nikeys);
			FUNC3(&newowner->nikeys);
		}

		zapowner = key->user;
		key->user = newowner;
		key->uid = uid;
	}

	/* change the GID */
	if (group != (gid_t) -1)
		key->gid = gid;

	ret = 0;

error_put:
	FUNC22(&key->sem);
	FUNC10(key);
	if (zapowner)
		FUNC13(zapowner);
error:
	return ret;

quota_overrun:
	FUNC18(&newowner->lock);
	zapowner = newowner;
	ret = -EDQUOT;
	goto error_put;
}
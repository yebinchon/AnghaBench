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
struct key {int datalen; int quotalen; TYPE_1__* user; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int qnbytes; int /*<<< orphan*/  lock; int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int EDQUOT ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int /*<<< orphan*/  KEY_FLAG_IN_QUOTA ; 
 int /*<<< orphan*/  FUNC0 (struct key*) ; 
 unsigned int key_quota_maxbytes ; 
 unsigned int key_quota_root_maxbytes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct key *key, size_t datalen)
{
	int delta = (int)datalen - key->datalen;
	int ret = 0;

	FUNC0(key);

	/* contemplate the quota adjustment */
	if (delta != 0 && FUNC3(KEY_FLAG_IN_QUOTA, &key->flags)) {
		unsigned maxbytes = FUNC4(key->user->uid, GLOBAL_ROOT_UID) ?
			key_quota_root_maxbytes : key_quota_maxbytes;

		FUNC1(&key->user->lock);

		if (delta > 0 &&
		    (key->user->qnbytes + delta >= maxbytes ||
		     key->user->qnbytes + delta < key->user->qnbytes)) {
			ret = -EDQUOT;
		}
		else {
			key->user->qnbytes += delta;
			key->quotalen += delta;
		}
		FUNC2(&key->user->lock);
	}

	/* change the recorded data length if that didn't generate an error */
	if (ret == 0)
		key->datalen = datalen;

	return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_6__ {scalar_t__ expiry_time; scalar_t__ flags; } ;
struct unix_gid {TYPE_3__* gi; TYPE_1__ h; int /*<<< orphan*/  uid; } ;
struct cache_head {int dummy; } ;
struct cache_detail {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;
struct TYPE_7__ {int /*<<< orphan*/ * gid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct cache_head*,struct cache_detail*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char**) ; 
 int FUNC3 (char**,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 struct cache_head* FUNC10 (struct cache_detail*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct unix_gid* FUNC12 (struct cache_detail*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct cache_detail *cd,
			char *mesg, int mlen)
{
	/* uid expiry Ngid gid0 gid1 ... gidN-1 */
	int id;
	kuid_t uid;
	int gids;
	int rv;
	int i;
	int err;
	time_t expiry;
	struct unix_gid ug, *ugp;

	if (mesg[mlen - 1] != '\n')
		return -EINVAL;
	mesg[mlen-1] = 0;

	rv = FUNC3(&mesg, &id);
	if (rv)
		return -EINVAL;
	uid = FUNC8(FUNC1(), id);
	ug.uid = uid;

	expiry = FUNC2(&mesg);
	if (expiry == 0)
		return -EINVAL;

	rv = FUNC3(&mesg, &gids);
	if (rv || gids < 0 || gids > 8192)
		return -EINVAL;

	ug.gi = FUNC5(gids);
	if (!ug.gi)
		return -ENOMEM;

	for (i = 0 ; i < gids ; i++) {
		int gid;
		kgid_t kgid;
		rv = FUNC3(&mesg, &gid);
		err = -EINVAL;
		if (rv)
			goto out;
		kgid = FUNC7(FUNC1(), gid);
		if (!FUNC4(kgid))
			goto out;
		ug.gi->gid[i] = kgid;
	}

	FUNC6(ug.gi);
	ugp = FUNC12(cd, uid);
	if (ugp) {
		struct cache_head *ch;
		ug.h.flags = 0;
		ug.h.expiry_time = expiry;
		ch = FUNC10(cd,
					 &ug.h, &ugp->h,
					 FUNC11(uid));
		if (!ch)
			err = -ENOMEM;
		else {
			err = 0;
			FUNC0(ch, cd);
		}
	} else
		err = -ENOMEM;
 out:
	if (ug.gi)
		FUNC9(ug.gi);
	return err;
}
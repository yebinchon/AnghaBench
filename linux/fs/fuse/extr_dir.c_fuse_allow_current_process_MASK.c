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
struct fuse_conn {int /*<<< orphan*/  group_id; int /*<<< orphan*/  user_id; int /*<<< orphan*/  user_ns; scalar_t__ allow_other; } ;
struct cred {int /*<<< orphan*/  gid; int /*<<< orphan*/  sgid; int /*<<< orphan*/  egid; int /*<<< orphan*/  uid; int /*<<< orphan*/  suid; int /*<<< orphan*/  euid; } ;

/* Variables and functions */
 struct cred* FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct fuse_conn *fc)
{
	const struct cred *cred;

	if (fc->allow_other)
		return FUNC1(fc->user_ns);

	cred = FUNC0();
	if (FUNC3(cred->euid, fc->user_id) &&
	    FUNC3(cred->suid, fc->user_id) &&
	    FUNC3(cred->uid,  fc->user_id) &&
	    FUNC2(cred->egid, fc->group_id) &&
	    FUNC2(cred->sgid, fc->group_id) &&
	    FUNC2(cred->gid,  fc->group_id))
		return 1;

	return 0;
}
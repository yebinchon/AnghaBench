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
struct kern_ipc_perm {int mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct ipc64_perm {int mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int EINVAL ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct ipc64_perm *in, struct kern_ipc_perm *out)
{
	kuid_t uid = FUNC3(FUNC0(), in->uid);
	kgid_t gid = FUNC2(FUNC0(), in->gid);
	if (!FUNC4(uid) || !FUNC1(gid))
		return -EINVAL;

	out->uid = uid;
	out->gid = gid;
	out->mode = (out->mode & ~S_IRWXUGO)
		| (in->mode & S_IRWXUGO);

	return 0;
}
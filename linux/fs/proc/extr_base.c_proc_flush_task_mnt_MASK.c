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
struct vfsmount {struct dentry* mnt_root; } ;
struct qstr {char* name; void* len; } ;
struct dentry {int dummy; } ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 struct dentry* FUNC0 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 void* FUNC3 (char*,int,char*,int) ; 
 void* FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct vfsmount *mnt, pid_t pid, pid_t tgid)
{
	struct dentry *dentry, *leader, *dir;
	char buf[10 + 1];
	struct qstr name;

	name.name = buf;
	name.len = FUNC3(buf, sizeof(buf), "%u", pid);
	/* no ->d_hash() rejects on procfs */
	dentry = FUNC0(mnt->mnt_root, &name);
	if (dentry) {
		FUNC1(dentry);
		FUNC2(dentry);
	}

	if (pid == tgid)
		return;

	name.name = buf;
	name.len = FUNC3(buf, sizeof(buf), "%u", tgid);
	leader = FUNC0(mnt->mnt_root, &name);
	if (!leader)
		goto out;

	name.name = "task";
	name.len = FUNC4(name.name);
	dir = FUNC0(leader, &name);
	if (!dir)
		goto out_put_leader;

	name.name = buf;
	name.len = FUNC3(buf, sizeof(buf), "%u", pid);
	dentry = FUNC0(dir, &name);
	if (dentry) {
		FUNC1(dentry);
		FUNC2(dentry);
	}

	FUNC2(dir);
out_put_leader:
	FUNC2(leader);
out:
	return;
}
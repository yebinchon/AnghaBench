#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nfsd_net {TYPE_2__* rec_file; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct TYPE_4__ {TYPE_1__ f_path; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC8 (char*,struct dentry*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct dentry*) ; 

__attribute__((used)) static int
FUNC10(char *name, int namlen, struct nfsd_net *nn)
{
	struct dentry *dir, *dentry;
	int status;

	FUNC4("NFSD: nfsd4_unlink_clid_dir. name %.*s\n", namlen, name);

	dir = nn->rec_file->f_path.dentry;
	FUNC6(FUNC2(dir), I_MUTEX_PARENT);
	dentry = FUNC8(name, dir, namlen);
	if (FUNC0(dentry)) {
		status = FUNC1(dentry);
		goto out_unlock;
	}
	status = -ENOENT;
	if (FUNC3(dentry))
		goto out;
	status = FUNC9(FUNC2(dir), dentry);
out:
	FUNC5(dentry);
out_unlock:
	FUNC7(FUNC2(dir));
	return status;
}
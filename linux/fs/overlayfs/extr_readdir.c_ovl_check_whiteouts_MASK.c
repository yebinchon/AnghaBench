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
struct ovl_readdir_data {struct ovl_cache_entry* first_maybe_whiteout; TYPE_1__* dentry; } ;
struct ovl_cache_entry {int /*<<< orphan*/  is_whiteout; int /*<<< orphan*/  len; int /*<<< orphan*/  name; struct ovl_cache_entry* next_maybe_whiteout; } ;
struct dentry {TYPE_2__* d_inode; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_rwsem; } ;
struct TYPE_3__ {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct dentry* FUNC4 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 struct cred* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cred const*) ; 

__attribute__((used)) static int FUNC8(struct dentry *dir, struct ovl_readdir_data *rdd)
{
	int err;
	struct ovl_cache_entry *p;
	struct dentry *dentry;
	const struct cred *old_cred;

	old_cred = FUNC6(rdd->dentry->d_sb);

	err = FUNC1(&dir->d_inode->i_rwsem);
	if (!err) {
		while (rdd->first_maybe_whiteout) {
			p = rdd->first_maybe_whiteout;
			rdd->first_maybe_whiteout = p->next_maybe_whiteout;
			dentry = FUNC4(p->name, dir, p->len);
			if (!FUNC0(dentry)) {
				p->is_whiteout = FUNC5(dentry);
				FUNC2(dentry);
			}
		}
		FUNC3(dir->d_inode);
	}
	FUNC7(old_cred);

	return err;
}
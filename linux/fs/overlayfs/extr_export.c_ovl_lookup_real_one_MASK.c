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
struct ovl_layer {int /*<<< orphan*/  idx; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct name_snapshot {TYPE_1__ name; } ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int ECHILD ; 
 int ENOENT ; 
 struct dentry* FUNC0 (int) ; 
 int ESTALE ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int FUNC2 (struct dentry*) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 struct dentry* FUNC8 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC9 (struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct dentry*,int /*<<< orphan*/ ,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct name_snapshot*) ; 
 int /*<<< orphan*/  FUNC12 (struct name_snapshot*,struct dentry*) ; 

__attribute__((used)) static struct dentry *FUNC13(struct dentry *connected,
					  struct dentry *real,
					  struct ovl_layer *layer)
{
	struct inode *dir = FUNC3(connected);
	struct dentry *this, *parent = NULL;
	struct name_snapshot name;
	int err;

	/*
	 * Lookup child overlay dentry by real name. The dir mutex protects us
	 * from racing with overlay rename. If the overlay dentry that is above
	 * real has already been moved to a parent that is not under the
	 * connected overlay dir, we return -ECHILD and restart the lookup of
	 * connected real path from the top.
	 */
	FUNC6(dir, I_MUTEX_PARENT);
	err = -ECHILD;
	parent = FUNC4(real);
	if (FUNC9(connected, layer->idx) != parent)
		goto fail;

	/*
	 * We also need to take a snapshot of real dentry name to protect us
	 * from racing with underlying layer rename. In this case, we don't
	 * care about returning ESTALE, only from dereferencing a free name
	 * pointer because we hold no lock on the real dentry.
	 */
	FUNC12(&name, real);
	this = FUNC8(name.name.name, connected, name.name.len);
	err = FUNC2(this);
	if (FUNC1(this)) {
		goto fail;
	} else if (!this || !this->d_inode) {
		FUNC5(this);
		err = -ENOENT;
		goto fail;
	} else if (FUNC9(this, layer->idx) != real) {
		FUNC5(this);
		err = -ESTALE;
		goto fail;
	}

out:
	FUNC11(&name);
	FUNC5(parent);
	FUNC7(dir);
	return this;

fail:
	FUNC10("overlayfs: failed to lookup one by real (%pd2, layer=%d, connected=%pd2, err=%i)\n",
			    real, layer->idx, connected, err);
	this = FUNC0(err);
	goto out;
}
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
struct mountpoint {int m_count; int /*<<< orphan*/  m_list; int /*<<< orphan*/  m_hash; int /*<<< orphan*/  m_dentry; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct mountpoint* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mountpoint*) ; 
 struct mountpoint* FUNC8 (int,int /*<<< orphan*/ ) ; 
 struct mountpoint* FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  mount_lock ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mountpoint *FUNC13(struct dentry *dentry)
{
	struct mountpoint *mp, *new = NULL;
	int ret;

	if (FUNC2(dentry)) {
		/* might be worth a WARN_ON() */
		if (FUNC4(dentry))
			return FUNC0(-ENOENT);
mountpoint:
		FUNC11(&mount_lock);
		mp = FUNC9(dentry);
		FUNC12(&mount_lock);
		if (mp)
			goto done;
	}

	if (!new)
		new = FUNC8(sizeof(struct mountpoint), GFP_KERNEL);
	if (!new)
		return FUNC0(-ENOMEM);


	/* Exactly one processes may set d_mounted */
	ret = FUNC3(dentry);

	/* Someone else set d_mounted? */
	if (ret == -EBUSY)
		goto mountpoint;

	/* The dentry is not available as a mountpoint? */
	mp = FUNC0(ret);
	if (ret)
		goto done;

	/* Add the new mountpoint to the hash table */
	FUNC11(&mount_lock);
	new->m_dentry = FUNC5(dentry);
	new->m_count = 1;
	FUNC6(&new->m_hash, FUNC10(dentry));
	FUNC1(&new->m_list);
	FUNC12(&mount_lock);

	mp = new;
	new = NULL;
done:
	FUNC7(new);
	return mp;
}
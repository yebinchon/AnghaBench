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
struct fscache_netfs {int /*<<< orphan*/  name; struct fscache_cookie* primary_index; int /*<<< orphan*/  version; } ;
struct fscache_cookie {int flags; TYPE_1__* parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  n_children; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int FSCACHE_COOKIE_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct fscache_cookie* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct fscache_netfs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fscache_cookie_discard ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fscache_cookie_get_register_netfs ; 
 int /*<<< orphan*/  FUNC5 (struct fscache_cookie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fscache_cookie_put_dup_netfs ; 
 int /*<<< orphan*/  FUNC6 (struct fscache_cookie*) ; 
 int /*<<< orphan*/  fscache_fsdef_index ; 
 int /*<<< orphan*/  fscache_fsdef_netfs_def ; 
 struct fscache_cookie* FUNC7 (struct fscache_cookie*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fscache_cookie*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct fscache_netfs*) ; 

int FUNC12(struct fscache_netfs *netfs)
{
	struct fscache_cookie *candidate, *cookie;

	FUNC0("{%s}", netfs->name);

	/* allocate a cookie for the primary index */
	candidate = FUNC3(&fscache_fsdef_index,
					 &fscache_fsdef_netfs_def,
					 netfs->name, FUNC9(netfs->name),
					 &netfs->version, sizeof(netfs->version),
					 netfs, 0);
	if (!candidate) {
		FUNC1(" = -ENOMEM");
		return -ENOMEM;
	}

	candidate->flags = 1 << FSCACHE_COOKIE_ENABLED;

	/* check the netfs type is not already present */
	cookie = FUNC7(candidate);
	if (!cookie)
		goto already_registered;
	if (cookie != candidate) {
		FUNC10(candidate, fscache_cookie_discard, 1);
		FUNC6(candidate);
	}

	FUNC4(cookie->parent, fscache_cookie_get_register_netfs);
	FUNC2(&cookie->parent->n_children);

	netfs->primary_index = cookie;

	FUNC8("Netfs '%s' registered for caching\n", netfs->name);
	FUNC11(netfs);
	FUNC1(" = 0");
	return 0;

already_registered:
	FUNC5(candidate, fscache_cookie_put_dup_netfs);
	FUNC1(" = -EEXIST");
	return -EEXIST;
}
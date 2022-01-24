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
typedef  void posix_acl ;
struct inode {TYPE_1__* i_op; } ;
struct TYPE_2__ {void* (* get_acl ) (struct inode*,int) ;} ;

/* Variables and functions */
 void* ACL_NOT_CACHED ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 void** FUNC2 (struct inode*,int) ; 
 void* FUNC3 (void**,void*,void*) ; 
 int /*<<< orphan*/  current ; 
 void* FUNC4 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int,int /*<<< orphan*/ *) ; 
 void* FUNC9 (struct inode*,int) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

struct posix_acl *FUNC12(struct inode *inode, int type)
{
	void *sentinel;
	struct posix_acl **p;
	struct posix_acl *acl;

	/*
	 * The sentinel is used to detect when another operation like
	 * set_cached_acl() or forget_cached_acl() races with get_acl().
	 * It is guaranteed that is_uncached_acl(sentinel) is true.
	 */

	acl = FUNC4(inode, type);
	if (!FUNC5(acl))
		return acl;

	if (!FUNC1(inode))
		return NULL;

	sentinel = FUNC10(current);
	p = FUNC2(inode, type);

	/*
	 * If the ACL isn't being read yet, set our sentinel.  Otherwise, the
	 * current value of the ACL will not be ACL_NOT_CACHED and so our own
	 * sentinel will not be set; another task will update the cache.  We
	 * could wait for that other task to complete its job, but it's easier
	 * to just call ->get_acl to fetch the ACL ourself.  (This is going to
	 * be an unlikely race.)
	 */
	if (FUNC3(p, ACL_NOT_CACHED, sentinel) != ACL_NOT_CACHED)
		/* fall through */ ;

	/*
	 * Normally, the ACL returned by ->get_acl will be cached.
	 * A filesystem can prevent that by calling
	 * forget_cached_acl(inode, type) in ->get_acl.
	 *
	 * If the filesystem doesn't have a get_acl() function at all, we'll
	 * just create the negative cache entry.
	 */
	if (!inode->i_op->get_acl) {
		FUNC8(inode, type, NULL);
		return NULL;
	}
	acl = inode->i_op->get_acl(inode, type);

	if (FUNC0(acl)) {
		/*
		 * Remove our sentinel so that we don't block future attempts
		 * to cache the ACL.
		 */
		FUNC3(p, sentinel, ACL_NOT_CACHED);
		return acl;
	}

	/*
	 * Cache the result, but only if our sentinel is still in place.
	 */
	FUNC6(acl);
	if (FUNC11(FUNC3(p, sentinel, acl) != sentinel))
		FUNC7(acl);
	return acl;
}
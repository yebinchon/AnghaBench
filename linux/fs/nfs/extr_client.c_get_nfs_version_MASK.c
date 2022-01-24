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
struct nfs_subversion {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 struct nfs_subversion* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct nfs_subversion*) ; 
 struct nfs_subversion* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_version_mutex ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

struct nfs_subversion *FUNC7(unsigned int version)
{
	struct nfs_subversion *nfs = FUNC2(version);

	if (FUNC1(nfs)) {
		FUNC3(&nfs_version_mutex);
		FUNC5("nfsv%d", version);
		nfs = FUNC2(version);
		FUNC4(&nfs_version_mutex);
	}

	if (!FUNC1(nfs) && !FUNC6(nfs->owner))
		return FUNC0(-EAGAIN);
	return nfs;
}
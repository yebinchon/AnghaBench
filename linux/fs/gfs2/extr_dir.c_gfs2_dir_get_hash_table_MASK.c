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
typedef  int u32 ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct gfs2_inode {int i_diskflags; int /*<<< orphan*/ * i_hash_cache; struct inode i_inode; int /*<<< orphan*/  i_depth; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int GFP_NOFS ; 
 int GFS2_DIF_EXHASH ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_inode*) ; 
 int FUNC5 (struct gfs2_inode*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be64 *FUNC12(struct gfs2_inode *ip)
{
	struct inode *inode = &ip->i_inode;
	int ret;
	u32 hsize;
	__be64 *hc;

	FUNC1(!(ip->i_diskflags & GFS2_DIF_EXHASH));

	hc = ip->i_hash_cache;
	if (hc)
		return hc;

	hsize = FUNC0(ip->i_depth);
	hsize *= sizeof(__be64);
	if (hsize != FUNC6(&ip->i_inode)) {
		FUNC4(ip);
		return FUNC2(-EIO);
	}

	hc = FUNC7(hsize, GFP_NOFS | __GFP_NOWARN);
	if (hc == NULL)
		hc = FUNC3(hsize, GFP_NOFS, PAGE_KERNEL);

	if (hc == NULL)
		return FUNC2(-ENOMEM);

	ret = FUNC5(ip, hc, hsize);
	if (ret < 0) {
		FUNC8(hc);
		return FUNC2(ret);
	}

	FUNC10(&inode->i_lock);
	if (FUNC9(!ip->i_hash_cache)) {
		ip->i_hash_cache = hc;
		hc = NULL;
	}
	FUNC11(&inode->i_lock);
	FUNC8(hc);

	return ip->i_hash_cache;
}
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
struct path {int /*<<< orphan*/  dentry; } ;
struct kstat {int attributes; int attributes_mask; } ;
struct inode {int dummy; } ;
struct gfs2_inode {int i_diskflags; int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;

/* Variables and functions */
 int GFS2_DIF_APPENDONLY ; 
 int GFS2_DIF_IMMUTABLE ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  LM_FLAG_ANY ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int STATX_ATTR_APPEND ; 
 int STATX_ATTR_COMPRESSED ; 
 int STATX_ATTR_ENCRYPTED ; 
 int STATX_ATTR_IMMUTABLE ; 
 int STATX_ATTR_NODUMP ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_holder*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 scalar_t__ FUNC6 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_holder*) ; 

__attribute__((used)) static int FUNC8(const struct path *path, struct kstat *stat,
			u32 request_mask, unsigned int flags)
{
	struct inode *inode = FUNC1(path->dentry);
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_holder gh;
	u32 gfsflags;
	int error;

	FUNC7(&gh);
	if (FUNC4(ip->i_gl) == NULL) {
		error = FUNC5(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY, &gh);
		if (error)
			return error;
	}

	gfsflags = ip->i_diskflags;
	if (gfsflags & GFS2_DIF_APPENDONLY)
		stat->attributes |= STATX_ATTR_APPEND;
	if (gfsflags & GFS2_DIF_IMMUTABLE)
		stat->attributes |= STATX_ATTR_IMMUTABLE;

	stat->attributes_mask |= (STATX_ATTR_APPEND |
				  STATX_ATTR_COMPRESSED |
				  STATX_ATTR_ENCRYPTED |
				  STATX_ATTR_IMMUTABLE |
				  STATX_ATTR_NODUMP);

	FUNC2(inode, stat);

	if (FUNC6(&gh))
		FUNC3(&gh);

	return 0;
}
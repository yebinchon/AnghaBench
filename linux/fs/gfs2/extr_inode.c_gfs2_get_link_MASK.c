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
struct inode {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_dinode {int dummy; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int ECHILD ; 
 int EIO ; 
 int ENOMEM ; 
 char const* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_holder*) ; 
 int FUNC6 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_holder*) ; 
 int FUNC9 (struct gfs2_inode*,struct buffer_head**) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kfree_link ; 
 char* FUNC11 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct delayed_call*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static const char *FUNC14(struct dentry *dentry,
				 struct inode *inode,
				 struct delayed_call *done)
{
	struct gfs2_inode *ip = FUNC1(inode);
	struct gfs2_holder i_gh;
	struct buffer_head *dibh;
	unsigned int size;
	char *buf;
	int error;

	if (!dentry)
		return FUNC0(-ECHILD);

	FUNC7(ip->i_gl, LM_ST_SHARED, 0, &i_gh);
	error = FUNC6(&i_gh);
	if (error) {
		FUNC8(&i_gh);
		return FUNC0(error);
	}

	size = (unsigned int)FUNC10(&ip->i_inode);
	if (size == 0) {
		FUNC4(ip);
		buf = FUNC0(-EIO);
		goto out;
	}

	error = FUNC9(ip, &dibh);
	if (error) {
		buf = FUNC0(error);
		goto out;
	}

	buf = FUNC11(size + 1, GFP_NOFS);
	if (!buf)
		buf = FUNC0(-ENOMEM);
	else
		FUNC12(buf, dibh->b_data + sizeof(struct gfs2_dinode), size);
	FUNC3(dibh);
out:
	FUNC5(&i_gh);
	if (!FUNC2(buf))
		FUNC13(done, kfree_link, buf);
	return buf;
}
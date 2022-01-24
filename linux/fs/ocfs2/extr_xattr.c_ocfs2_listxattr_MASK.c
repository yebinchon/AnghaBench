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
struct ocfs2_inode_info {int ip_dyn_features; int /*<<< orphan*/  ip_xattr_sem; } ;
struct ocfs2_dinode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int OCFS2_HAS_XATTR_FL ; 
 struct ocfs2_inode_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct buffer_head**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct ocfs2_dinode*,char*,size_t) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct ocfs2_dinode*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

ssize_t FUNC12(struct dentry *dentry,
			char *buffer,
			size_t size)
{
	int ret = 0, i_ret = 0, b_ret = 0;
	struct buffer_head *di_bh = NULL;
	struct ocfs2_dinode *di = NULL;
	struct ocfs2_inode_info *oi = FUNC0(FUNC3(dentry));

	if (!FUNC8(FUNC1(dentry->d_sb)))
		return -EOPNOTSUPP;

	if (!(oi->ip_dyn_features & OCFS2_HAS_XATTR_FL))
		return ret;

	ret = FUNC6(FUNC3(dentry), &di_bh, 0);
	if (ret < 0) {
		FUNC5(ret);
		return ret;
	}

	di = (struct ocfs2_dinode *)di_bh->b_data;

	FUNC4(&oi->ip_xattr_sem);
	i_ret = FUNC10(FUNC3(dentry), di, buffer, size);
	if (i_ret < 0)
		b_ret = 0;
	else {
		if (buffer) {
			buffer += i_ret;
			size -= i_ret;
		}
		b_ret = FUNC9(FUNC3(dentry), di,
					       buffer, size);
		if (b_ret < 0)
			i_ret = 0;
	}
	FUNC11(&oi->ip_xattr_sem);
	FUNC7(FUNC3(dentry), 0);

	FUNC2(di_bh);

	return i_ret + b_ret;
}
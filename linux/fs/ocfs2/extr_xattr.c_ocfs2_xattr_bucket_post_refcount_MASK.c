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
struct ocfs2_xattr_bucket {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct ocfs2_xattr_bucket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ocfs2_xattr_bucket*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode,
					    handle_t *handle,
					    void *para)
{
	int ret;
	struct ocfs2_xattr_bucket *bucket =
			(struct ocfs2_xattr_bucket *)para;

	ret = FUNC1(handle, bucket,
						OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC0(ret);
		return ret;
	}

	FUNC2(handle, bucket);

	return 0;
}
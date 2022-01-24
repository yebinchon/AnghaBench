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
struct vxfs_direct {int /*<<< orphan*/  d_ino; } ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 struct vxfs_direct* FUNC4 (struct inode*,struct dentry*,struct page**) ; 

__attribute__((used)) static ino_t
FUNC5(struct inode *dip, struct dentry *dp)
{
	struct vxfs_direct		*de;
	struct page			*pp;
	ino_t				ino = 0;

	de = FUNC4(dip, dp, &pp);
	if (de) {
		ino = FUNC1(FUNC0(dip->i_sb), de->d_ino);
		FUNC2(pp);
		FUNC3(pp);
	}
	
	return (ino);
}
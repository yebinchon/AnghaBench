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
struct inode {scalar_t__ i_nlink; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  OVL_XATTR_NLINK ; 
 scalar_t__ FUNC0 (int) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int,char const*,int) ; 

__attribute__((used)) static int FUNC5(struct dentry *dentry,
				struct dentry *realdentry, const char *format)
{
	struct inode *inode = FUNC1(dentry);
	struct inode *realinode = FUNC1(realdentry);
	char buf[13];
	int len;

	len = FUNC4(buf, sizeof(buf), format,
		       (int) (inode->i_nlink - realinode->i_nlink));

	if (FUNC0(len >= sizeof(buf)))
		return -EIO;

	return FUNC3(FUNC2(dentry),
			       OVL_XATTR_NLINK, buf, len, 0);
}
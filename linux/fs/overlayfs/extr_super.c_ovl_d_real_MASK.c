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
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {char* s_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct dentry*,char*,int /*<<< orphan*/ ) ; 
 struct inode const* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*,struct inode const*) ; 
 struct dentry* FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (struct dentry*) ; 
 scalar_t__ FUNC6 (struct inode const*) ; 

__attribute__((used)) static struct dentry *FUNC7(struct dentry *dentry,
				 const struct inode *inode)
{
	struct dentry *real;

	/* It's an overlay file */
	if (inode && FUNC1(dentry) == inode)
		return dentry;

	if (!FUNC2(dentry)) {
		if (!inode || inode == FUNC1(dentry))
			return dentry;
		goto bug;
	}

	real = FUNC5(dentry);
	if (real && (inode == FUNC1(real)))
		return real;

	if (real && !inode && FUNC6(FUNC1(dentry)))
		return real;

	real = FUNC4(dentry);
	if (!real)
		goto bug;

	/* Handle recursion */
	real = FUNC3(real, inode);

	if (!inode || inode == FUNC1(real))
		return real;
bug:
	FUNC0(1, "ovl_d_real(%pd4, %s:%lu): real dentry not found\n", dentry,
	     inode ? inode->i_sb->s_id : "NULL", inode ? inode->i_ino : 0);
	return dentry;
}
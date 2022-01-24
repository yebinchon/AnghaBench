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
struct qstr {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (struct inode*,struct qstr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qstr*,char const*) ; 

struct inode *FUNC3(struct inode *dip, const char *name)
{
	struct qstr qstr;
	struct inode *inode;
	FUNC2(&qstr, name);
	inode = FUNC1(dip, &qstr, 1);
	/* gfs2_lookupi has inconsistent callers: vfs
	 * related routines expect NULL for no entry found,
	 * gfs2_lookup_simple callers expect ENOENT
	 * and do not check for NULL.
	 */
	if (inode == NULL)
		return FUNC0(-ENOENT);
	else
		return inode;
}
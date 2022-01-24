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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct gfs2_inode {int dummy; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct gfs2_inode*) ; 
 int FUNC2 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gfs2_inode*) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, u64 newsize)
{
	struct gfs2_inode *ip = FUNC0(inode);
	int error;

	error = FUNC4(inode, newsize);
	if (error < 0)
		return error;
	if (FUNC1(ip))
		return 0;

	error = FUNC2(ip, newsize, 0);
	if (error == 0)
		error = FUNC3(ip);

	return error;
}
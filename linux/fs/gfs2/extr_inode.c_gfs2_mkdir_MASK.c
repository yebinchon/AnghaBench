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
typedef  int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int S_IFDIR ; 
 int FUNC1 (struct inode*,struct dentry*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	unsigned dsize = FUNC2(FUNC0(dir));
	return FUNC1(dir, dentry, NULL, S_IFDIR | mode, 0, NULL, dsize, 0);
}
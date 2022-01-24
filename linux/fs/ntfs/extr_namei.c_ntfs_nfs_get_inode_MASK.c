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
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_generation; } ;

/* Variables and functions */
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct inode *FUNC5(struct super_block *sb,
		u64 ino, u32 generation)
{
	struct inode *inode;

	inode = FUNC4(sb, ino);
	if (!FUNC1(inode)) {
		if (FUNC3(inode) || inode->i_generation != generation) {
			FUNC2(inode);
			inode = FUNC0(-ESTALE);
		}
	}

	return inode;
}
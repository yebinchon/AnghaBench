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
typedef  int /*<<< orphan*/  ulong ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  RDWRLOCK_NORMAL ; 
 int /*<<< orphan*/  jfs_get_block ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC5(struct inode *ip)
{
	FUNC2("jfs_truncate: size = 0x%lx", (ulong) ip->i_size);

	FUNC4(ip->i_mapping, ip->i_size, jfs_get_block);

	FUNC0(ip, RDWRLOCK_NORMAL);
	FUNC3(ip, ip->i_size);
	FUNC1(ip);
}
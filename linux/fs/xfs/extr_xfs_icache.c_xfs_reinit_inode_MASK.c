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
typedef  int /*<<< orphan*/  umode_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct xfs_mount {int /*<<< orphan*/  m_super; } ;
struct inode {int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_nlink; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(
	struct xfs_mount	*mp,
	struct inode		*inode)
{
	int		error;
	uint32_t	nlink = inode->i_nlink;
	uint32_t	generation = inode->i_generation;
	uint64_t	version = FUNC1(inode);
	umode_t		mode = inode->i_mode;
	dev_t		dev = inode->i_rdev;

	error = FUNC0(mp->m_super, inode);

	FUNC3(inode, nlink);
	inode->i_generation = generation;
	FUNC2(inode, version);
	inode->i_mode = mode;
	inode->i_rdev = dev;
	return error;
}
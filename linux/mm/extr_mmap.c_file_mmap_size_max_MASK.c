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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct file {int f_mode; } ;

/* Variables and functions */
 int FMODE_UNSIGNED_OFFSET ; 
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ULONG_MAX ; 

__attribute__((used)) static inline u64 FUNC3(struct file *file, struct inode *inode)
{
	if (FUNC1(inode->i_mode))
		return MAX_LFS_FILESIZE;

	if (FUNC0(inode->i_mode))
		return MAX_LFS_FILESIZE;

	if (FUNC2(inode->i_mode))
		return MAX_LFS_FILESIZE;

	/* Special "we do even unsigned file positions" case */
	if (file->f_mode & FMODE_UNSIGNED_OFFSET)
		return 0;

	/* Yes, random drivers might want more. But I'm tired of buggy drivers */
	return ULONG_MAX;
}
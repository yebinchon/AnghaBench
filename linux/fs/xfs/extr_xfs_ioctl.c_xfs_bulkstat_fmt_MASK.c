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
struct xfs_ibulk {int /*<<< orphan*/  ubuffer; } ;
struct xfs_bulkstat {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct xfs_bulkstat const*,int) ; 
 int FUNC1 (struct xfs_ibulk*,int) ; 

__attribute__((used)) static int
FUNC2(
	struct xfs_ibulk		*breq,
	const struct xfs_bulkstat	*bstat)
{
	if (FUNC0(breq->ubuffer, bstat, sizeof(struct xfs_bulkstat)))
		return -EFAULT;
	return FUNC1(breq, sizeof(struct xfs_bulkstat));
}
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
struct xfs_mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static inline bool
FUNC1(struct xfs_mount *mp, unsigned int mask)
{
	unsigned int	sick, checked;

	FUNC0(mp, &sick, &checked);
	return sick & mask;
}
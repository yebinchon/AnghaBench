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
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GOSSIP_UTILS_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 

__attribute__((used)) static void FUNC4(struct inode *inode)
{
	if (FUNC2(inode)) {
		/*
		 * if this occurs, the pvfs2-client-core was killed but we
		 * can't afford to lose the inode operations and such
		 * associated with the root handle in any case.
		 */
		FUNC1(GOSSIP_UTILS_DEBUG,
			     "*** NOT making bad root inode %pU\n",
			     FUNC0(inode));
	} else {
		FUNC1(GOSSIP_UTILS_DEBUG,
			     "*** making bad inode %pU\n",
			     FUNC0(inode));
		FUNC3(inode);
	}
}
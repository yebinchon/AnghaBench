#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_uid; } ;
typedef  int /*<<< orphan*/  kuid_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_CHOWN ; 
 int /*<<< orphan*/  INVALID_UID ; 
 scalar_t__ FUNC0 (struct inode const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(const struct inode *inode, kuid_t uid)
{
	if (FUNC3(FUNC1(), inode->i_uid) &&
	    FUNC3(uid, inode->i_uid))
		return true;
	if (FUNC0(inode, CAP_CHOWN))
		return true;
	if (FUNC3(inode->i_uid, INVALID_UID) &&
	    FUNC2(inode->i_sb->s_user_ns, CAP_CHOWN))
		return true;
	return false;
}
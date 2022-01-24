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
struct jfs_ea {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  XATTR_TRUSTED_PREFIX ; 
 int /*<<< orphan*/  XATTR_TRUSTED_PREFIX_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct jfs_ea *ea)
{
	return (FUNC1(ea->name, XATTR_TRUSTED_PREFIX,
			    XATTR_TRUSTED_PREFIX_LEN) ||
		FUNC0(CAP_SYS_ADMIN));
}
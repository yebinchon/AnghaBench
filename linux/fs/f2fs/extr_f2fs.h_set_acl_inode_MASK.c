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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_acl_mode; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FI_ACL_MODE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct inode *inode, umode_t mode)
{
	FUNC0(inode)->i_acl_mode = mode;
	FUNC2(inode, FI_ACL_MODE);
	FUNC1(inode, false);
}
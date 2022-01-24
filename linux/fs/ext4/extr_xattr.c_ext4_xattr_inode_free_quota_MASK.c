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
 int /*<<< orphan*/  EXT4_STATE_LUSTRE_EA_INODE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,size_t) ; 

__attribute__((used)) static void FUNC4(struct inode *parent,
					struct inode *ea_inode,
					size_t len)
{
	if (ea_inode &&
	    FUNC2(ea_inode, EXT4_STATE_LUSTRE_EA_INODE))
		return;
	FUNC1(parent, FUNC3(parent, len));
	FUNC0(parent);
}
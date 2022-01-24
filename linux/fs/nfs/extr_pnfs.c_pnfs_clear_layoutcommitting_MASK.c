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
struct inode {int dummy; } ;
struct TYPE_2__ {unsigned long flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_LAYOUTCOMMITTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct inode *inode)
{
	unsigned long *bitlock = &FUNC0(inode)->flags;

	FUNC1(NFS_INO_LAYOUTCOMMITTING, bitlock);
	FUNC2();
	FUNC3(bitlock, NFS_INO_LAYOUTCOMMITTING);
}
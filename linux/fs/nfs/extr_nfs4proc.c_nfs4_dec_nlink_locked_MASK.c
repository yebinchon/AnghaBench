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
struct TYPE_2__ {int /*<<< orphan*/  cache_validity; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_INVALID_OTHER ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 

__attribute__((used)) static void
FUNC2(struct inode *inode)
{
	FUNC0(inode)->cache_validity |= NFS_INO_INVALID_OTHER;
	FUNC1(inode);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct ext4_inode_info {int /*<<< orphan*/  i_datasync_tid; int /*<<< orphan*/  i_sync_tid; } ;
struct TYPE_7__ {TYPE_1__* h_transaction; } ;
typedef  TYPE_2__ handle_t ;
struct TYPE_6__ {int /*<<< orphan*/  t_tid; } ;

/* Variables and functions */
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static inline void FUNC3(handle_t *handle,
						 struct inode *inode,
						 int datasync)
{
	struct ext4_inode_info *ei = FUNC0(inode);

	if (FUNC1(handle) && !FUNC2(handle)) {
		ei->i_sync_tid = handle->h_transaction->t_tid;
		if (datasync)
			ei->i_datasync_tid = handle->h_transaction->t_tid;
	}
}
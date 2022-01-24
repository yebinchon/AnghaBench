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
struct super_block {int dummy; } ;
struct nfs_fattr {int /*<<< orphan*/  valid; int /*<<< orphan*/  fsid; } ;
struct TYPE_2__ {int /*<<< orphan*/  fsid; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_ATTR_FATTR_MOUNTPOINT ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct super_block *parent, struct nfs_fattr *fattr)
{
	if (!FUNC1(&FUNC0(parent)->fsid, &fattr->fsid))
		fattr->valid |= NFS_ATTR_FATTR_MOUNTPOINT;
}
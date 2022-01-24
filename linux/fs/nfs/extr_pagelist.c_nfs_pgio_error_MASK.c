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
struct nfs_pgio_header {TYPE_1__* completion_ops; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* completion ) (struct nfs_pgio_header*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_IOHDR_REDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pgio_header*) ; 

__attribute__((used)) static void FUNC2(struct nfs_pgio_header *hdr)
{
	FUNC0(NFS_IOHDR_REDO, &hdr->flags);
	hdr->completion_ops->completion(hdr);
}
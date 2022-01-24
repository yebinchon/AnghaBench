#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* context; } ;
struct nfs_pgio_header {TYPE_2__ args; int /*<<< orphan*/  completion_ops; int /*<<< orphan*/  inode; } ;
struct nfs_pageio_descriptor {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLUSH_STABLE ; 
 int /*<<< orphan*/  NFS_CONTEXT_RESEND_WRITES ; 
 int /*<<< orphan*/  FUNC0 (struct nfs_pageio_descriptor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct nfs_pgio_header *hdr)
{
	struct nfs_pageio_descriptor pgio;

	/* Resend all requests through the MDS */
	FUNC0(&pgio, hdr->inode, FLUSH_STABLE, true,
			      hdr->completion_ops);
	FUNC2(NFS_CONTEXT_RESEND_WRITES, &hdr->args.context->flags);
	return FUNC1(&pgio, hdr);
}
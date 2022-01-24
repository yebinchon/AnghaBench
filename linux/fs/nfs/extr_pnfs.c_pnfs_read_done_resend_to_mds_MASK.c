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
struct nfs_pgio_header {int /*<<< orphan*/  completion_ops; int /*<<< orphan*/  inode; } ;
struct nfs_pageio_descriptor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_pageio_descriptor*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ; 

int FUNC2(struct nfs_pgio_header *hdr)
{
	struct nfs_pageio_descriptor pgio;

	/* Resend all requests through the MDS */
	FUNC0(&pgio, hdr->inode, true, hdr->completion_ops);
	return FUNC1(&pgio, hdr);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  next; } ;
struct nfs_pgio_mirror {int /*<<< orphan*/  pg_count; TYPE_1__ pg_list; } ;
struct nfs_pgio_header {void (* release ) (struct nfs_pgio_header*) ;int /*<<< orphan*/  pgio_mirror_idx; TYPE_2__* completion_ops; int /*<<< orphan*/  dreq; int /*<<< orphan*/  io_completion; int /*<<< orphan*/  good_bytes; int /*<<< orphan*/  req; int /*<<< orphan*/  io_start; int /*<<< orphan*/  cred; int /*<<< orphan*/  inode; } ;
struct nfs_pageio_descriptor {int /*<<< orphan*/  pg_mirror_idx; TYPE_2__* pg_completion_ops; int /*<<< orphan*/  pg_dreq; int /*<<< orphan*/  pg_io_completion; int /*<<< orphan*/  pg_inode; } ;
struct TYPE_6__ {int /*<<< orphan*/  cred; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* init_hdr ) (struct nfs_pgio_header*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct nfs_pgio_mirror* FUNC1 (struct nfs_pageio_descriptor*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_pgio_header*) ; 

void FUNC5(struct nfs_pageio_descriptor *desc,
		       struct nfs_pgio_header *hdr,
		       void (*release)(struct nfs_pgio_header *hdr))
{
	struct nfs_pgio_mirror *mirror = FUNC1(desc);


	hdr->req = FUNC0(mirror->pg_list.next);
	hdr->inode = desc->pg_inode;
	hdr->cred = FUNC2(hdr->req)->cred;
	hdr->io_start = FUNC3(hdr->req);
	hdr->good_bytes = mirror->pg_count;
	hdr->io_completion = desc->pg_io_completion;
	hdr->dreq = desc->pg_dreq;
	hdr->release = release;
	hdr->completion_ops = desc->pg_completion_ops;
	if (hdr->completion_ops->init_hdr)
		hdr->completion_ops->init_hdr(hdr);

	hdr->pgio_mirror_idx = desc->pg_mirror_idx;
}
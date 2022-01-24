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
struct pnfs_layout_segment {int dummy; } ;
struct nfs_page {int dummy; } ;
struct nfs_open_context {int /*<<< orphan*/  cred; int /*<<< orphan*/  dentry; } ;
struct nfs_commit_info {int /*<<< orphan*/  dreq; int /*<<< orphan*/  completion_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/ * verf; int /*<<< orphan*/ * fattr; } ;
struct TYPE_3__ {scalar_t__ count; scalar_t__ offset; int /*<<< orphan*/  fh; } ;
struct nfs_commit_data {int /*<<< orphan*/  fattr; int /*<<< orphan*/  verf; TYPE_2__ res; int /*<<< orphan*/  context; TYPE_1__ args; struct inode* inode; int /*<<< orphan*/  dreq; int /*<<< orphan*/  completion_ops; int /*<<< orphan*/ * mds_ops; int /*<<< orphan*/  pages; int /*<<< orphan*/  lwb; struct pnfs_layout_segment* lseg; int /*<<< orphan*/  cred; } ;
struct list_head {int /*<<< orphan*/  next; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_commit_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct nfs_page* FUNC6 (int /*<<< orphan*/ ) ; 
 struct nfs_open_context* FUNC7 (struct nfs_page*) ; 

void FUNC8(struct nfs_commit_data *data,
		     struct list_head *head,
		     struct pnfs_layout_segment *lseg,
		     struct nfs_commit_info *cinfo)
{
	struct nfs_page *first = FUNC6(head->next);
	struct nfs_open_context *ctx = FUNC7(first);
	struct inode *inode = FUNC1(ctx->dentry);

	/* Set up the RPC argument and reply structs
	 * NB: take care not to mess about with data->commit et al. */

	FUNC3(head, &data->pages);

	data->inode	  = inode;
	data->cred	  = ctx->cred;
	data->lseg	  = lseg; /* reference transferred */
	/* only set lwb for pnfs commit */
	if (lseg)
		data->lwb = FUNC5(&data->pages);
	data->mds_ops     = &nfs_commit_ops;
	data->completion_ops = cinfo->completion_ops;
	data->dreq	  = cinfo->dreq;

	data->args.fh     = FUNC0(data->inode);
	/* Note: we always request a commit of the entire inode */
	data->args.offset = 0;
	data->args.count  = 0;
	data->context     = FUNC2(ctx);
	data->res.fattr   = &data->fattr;
	data->res.verf    = &data->verf;
	FUNC4(&data->fattr);
}
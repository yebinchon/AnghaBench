#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct nfs_open_dir_context {struct cred* cred; } ;
struct nfs_entry {int /*<<< orphan*/  cookie; } ;
struct inode {int dummy; } ;
struct file {struct nfs_open_dir_context* private_data; } ;
struct cred {int dummy; } ;
struct TYPE_6__ {int plus; unsigned long timestamp; unsigned long gencount; } ;
typedef  TYPE_1__ nfs_readdir_descriptor_t ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {int (* readdir ) (int /*<<< orphan*/ ,struct cred const*,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  caps; int /*<<< orphan*/  dtsize; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  NFS_CAP_READDIRPLUS ; 
 TYPE_5__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_ADVISE_RDPLUS ; 
 TYPE_4__* FUNC1 (struct inode*) ; 
 TYPE_3__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,struct cred const*,int /*<<< orphan*/ ,struct page**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
int FUNC7(struct page **pages, nfs_readdir_descriptor_t *desc,
			struct nfs_entry *entry, struct file *file, struct inode *inode)
{
	struct nfs_open_dir_context *ctx = file->private_data;
	const struct cred *cred = ctx->cred;
	unsigned long	timestamp, gencount;
	int		error;

 again:
	timestamp = jiffies;
	gencount = FUNC5();
	error = FUNC1(inode)->readdir(FUNC4(file), cred, entry->cookie, pages,
					  FUNC2(inode)->dtsize, desc->plus);
	if (error < 0) {
		/* We requested READDIRPLUS, but the server doesn't grok it */
		if (error == -ENOTSUPP && desc->plus) {
			FUNC2(inode)->caps &= ~NFS_CAP_READDIRPLUS;
			FUNC3(NFS_INO_ADVISE_RDPLUS, &FUNC0(inode)->flags);
			desc->plus = false;
			goto again;
		}
		goto error;
	}
	desc->timestamp = timestamp;
	desc->gencount = gencount;
error:
	return error;
}
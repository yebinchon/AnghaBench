#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct nfs_open_dir_context {scalar_t__ dir_cookie; } ;
struct inode {int dummy; } ;
struct file {int /*<<< orphan*/  f_mapping; struct nfs_open_dir_context* private_data; } ;
struct dir_context {scalar_t__ pos; } ;
struct dentry {int dummy; } ;
struct TYPE_8__ {int plus; int eof; scalar_t__ page_index; scalar_t__* dir_cookie; int /*<<< orphan*/  decode; struct dir_context* ctx; struct file* file; } ;
typedef  TYPE_1__ nfs_readdir_descriptor_t ;
struct TYPE_10__ {int /*<<< orphan*/  flags; } ;
struct TYPE_9__ {int /*<<< orphan*/  decode_dirent; } ;

/* Variables and functions */
 int EBADCOOKIE ; 
 int ETOOSMALL ; 
 int /*<<< orphan*/  FILE ; 
 int /*<<< orphan*/  NFSIOS_VFSGETDENTS ; 
 TYPE_7__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_ADVISE_RDPLUS ; 
 TYPE_6__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct file*,int) ; 
 struct dentry* FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,struct dir_context*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int FUNC13 (TYPE_1__*) ; 
 int FUNC14 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC15(struct file *file, struct dir_context *ctx)
{
	struct dentry	*dentry = FUNC5(file);
	struct inode	*inode = FUNC3(dentry);
	nfs_readdir_descriptor_t my_desc,
			*desc = &my_desc;
	struct nfs_open_dir_context *dir_ctx = file->private_data;
	int res = 0;

	FUNC4(FILE, "NFS: readdir(%pD2) starting at cookie %llu\n",
			file, (long long)ctx->pos);
	FUNC9(inode, NFSIOS_VFSGETDENTS);

	/*
	 * ctx->pos points to the dirent entry number.
	 * *desc->dir_cookie has the cookie for the next entry. We have
	 * to either find the entry with the appropriate number or
	 * revalidate the cookie.
	 */
	FUNC6(desc, 0, sizeof(*desc));

	desc->file = file;
	desc->ctx = ctx;
	desc->dir_cookie = &dir_ctx->dir_cookie;
	desc->decode = FUNC1(inode)->decode_dirent;
	desc->plus = FUNC11(inode, ctx);

	if (ctx->pos == 0 || FUNC7(inode))
		res = FUNC10(inode, file->f_mapping);
	if (res < 0)
		goto out;

	do {
		res = FUNC13(desc);

		if (res == -EBADCOOKIE) {
			res = 0;
			/* This means either end of directory */
			if (*desc->dir_cookie && !desc->eof) {
				/* Or that the server has 'lost' a cookie */
				res = FUNC14(desc);
				if (res == 0)
					continue;
			}
			break;
		}
		if (res == -ETOOSMALL && desc->plus) {
			FUNC2(NFS_INO_ADVISE_RDPLUS, &FUNC0(inode)->flags);
			FUNC12(inode);
			desc->page_index = 0;
			desc->plus = false;
			desc->eof = false;
			continue;
		}
		if (res < 0)
			break;

		res = FUNC8(desc);
		if (res < 0)
			break;
	} while (!desc->eof);
out:
	if (res > 0)
		res = 0;
	FUNC4(FILE, "NFS: readdir(%pD2) returns %d\n", file, res);
	return res;
}
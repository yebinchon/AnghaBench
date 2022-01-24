#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct nfs_entry {int /*<<< orphan*/ * fh; int /*<<< orphan*/ * fattr; int /*<<< orphan*/  label; int /*<<< orphan*/  server; scalar_t__ eof; int /*<<< orphan*/  cookie; scalar_t__ prev_cookie; } ;
struct nfs_cache_array {int eof_index; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  last_cookie; struct file* file; } ;
typedef  TYPE_1__ nfs_readdir_descriptor_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct page**) ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int NFS_MAX_READDIR_PAGES ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct nfs_cache_array* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_cache_array*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct page**,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct page**,unsigned int) ; 
 int FUNC15 (TYPE_1__*,struct nfs_entry*,struct page**,struct page*,unsigned int) ; 
 int FUNC16 (struct page**,TYPE_1__*,struct nfs_entry*,struct file*,struct inode*) ; 

__attribute__((used)) static
int FUNC17(nfs_readdir_descriptor_t *desc, struct page *page, struct inode *inode)
{
	struct page *pages[NFS_MAX_READDIR_PAGES];
	struct nfs_entry entry;
	struct file	*file = desc->file;
	struct nfs_cache_array *array;
	int status = -ENOMEM;
	unsigned int array_size = FUNC0(pages);

	entry.prev_cookie = 0;
	entry.cookie = desc->last_cookie;
	entry.eof = 0;
	entry.fh = FUNC10();
	entry.fattr = FUNC9();
	entry.server = FUNC2(inode);
	if (entry.fh == NULL || entry.fattr == NULL)
		goto out;

	entry.label = FUNC7(FUNC2(inode), GFP_NOWAIT);
	if (FUNC1(entry.label)) {
		status = FUNC3(entry.label);
		goto out;
	}

	array = FUNC4(page);
	FUNC6(array, 0, sizeof(struct nfs_cache_array));
	array->eof_index = -1;

	status = FUNC13(pages, array_size);
	if (status < 0)
		goto out_release_array;
	do {
		unsigned int pglen;
		status = FUNC16(pages, desc, &entry, file, inode);

		if (status < 0)
			break;
		pglen = status;
		status = FUNC15(desc, &entry, pages, page, pglen);
		if (status < 0) {
			if (status == -ENOSPC)
				status = 0;
			break;
		}
	} while (array->eof_index < 0);

	FUNC14(pages, array_size);
out_release_array:
	FUNC5(page);
	FUNC8(entry.label);
out:
	FUNC11(entry.fattr);
	FUNC12(entry.fh);
	return status;
}
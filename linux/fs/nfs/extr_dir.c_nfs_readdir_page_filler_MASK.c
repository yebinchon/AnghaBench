#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct xdr_buf {int dummy; } ;
struct page {int dummy; } ;
struct nfs_entry {scalar_t__ eof; } ;
struct nfs_cache_array {int /*<<< orphan*/  size; int /*<<< orphan*/  eof_index; } ;
struct TYPE_4__ {int /*<<< orphan*/  file; scalar_t__ plus; } ;
typedef  TYPE_1__ nfs_readdir_descriptor_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EBADCOOKIE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nfs_cache_array* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nfs_entry*) ; 
 int FUNC5 (struct nfs_entry*,struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int FUNC8 (TYPE_1__*,struct nfs_entry*,struct xdr_stream*) ; 
 int /*<<< orphan*/  FUNC9 (struct xdr_stream*,struct xdr_buf*,struct page**,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct xdr_stream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC11(nfs_readdir_descriptor_t *desc, struct nfs_entry *entry,
				struct page **xdr_pages, struct page *page, unsigned int buflen)
{
	struct xdr_stream stream;
	struct xdr_buf buf;
	struct page *scratch;
	struct nfs_cache_array *array;
	unsigned int count = 0;
	int status;

	scratch = FUNC0(GFP_KERNEL);
	if (scratch == NULL)
		return -ENOMEM;

	if (buflen == 0)
		goto out_nopages;

	FUNC9(&stream, &buf, xdr_pages, buflen);
	FUNC10(&stream, FUNC6(scratch), PAGE_SIZE);

	do {
		status = FUNC8(desc, entry, &stream);
		if (status != 0) {
			if (status == -EAGAIN)
				status = 0;
			break;
		}

		count++;

		if (desc->plus)
			FUNC4(FUNC1(desc->file), entry);

		status = FUNC5(entry, page);
		if (status != 0)
			break;
	} while (!entry->eof);

out_nopages:
	if (count == 0 || (status == -EBADCOOKIE && entry->eof != 0)) {
		array = FUNC2(page);
		array->eof_index = array->size;
		status = 0;
		FUNC3(page);
	}

	FUNC7(scratch);
	return status;
}
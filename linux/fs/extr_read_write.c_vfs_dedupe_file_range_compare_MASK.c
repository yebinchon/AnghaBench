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
struct page {scalar_t__ mapping; } ;
struct inode {scalar_t__ i_mapping; } ;
typedef  int loff_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int PAGE_SIZE ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 void* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*,void*,int) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 struct page* FUNC9 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,struct page*) ; 

__attribute__((used)) static int FUNC12(struct inode *src, loff_t srcoff,
					 struct inode *dest, loff_t destoff,
					 loff_t len, bool *is_same)
{
	loff_t src_poff;
	loff_t dest_poff;
	void *src_addr;
	void *dest_addr;
	struct page *src_page;
	struct page *dest_page;
	loff_t cmp_len;
	bool same;
	int error;

	error = -EINVAL;
	same = true;
	while (len) {
		src_poff = srcoff & (PAGE_SIZE - 1);
		dest_poff = destoff & (PAGE_SIZE - 1);
		cmp_len = FUNC7(PAGE_SIZE - src_poff,
			      PAGE_SIZE - dest_poff);
		cmp_len = FUNC7(cmp_len, len);
		if (cmp_len <= 0)
			goto out_error;

		src_page = FUNC9(src, srcoff);
		if (FUNC0(src_page)) {
			error = FUNC1(src_page);
			goto out_error;
		}
		dest_page = FUNC9(dest, destoff);
		if (FUNC0(dest_page)) {
			error = FUNC1(dest_page);
			FUNC8(src_page);
			goto out_error;
		}

		FUNC10(src_page, dest_page);

		/*
		 * Now that we've locked both pages, make sure they're still
		 * mapped to the file data we're interested in.  If not,
		 * someone is invalidating pages on us and we lose.
		 */
		if (!FUNC2(src_page) || !FUNC2(dest_page) ||
		    src_page->mapping != src->i_mapping ||
		    dest_page->mapping != dest->i_mapping) {
			same = false;
			goto unlock;
		}

		src_addr = FUNC4(src_page);
		dest_addr = FUNC4(dest_page);

		FUNC3(src_page);
		FUNC3(dest_page);

		if (FUNC6(src_addr + src_poff, dest_addr + dest_poff, cmp_len))
			same = false;

		FUNC5(dest_addr);
		FUNC5(src_addr);
unlock:
		FUNC11(src_page, dest_page);
		FUNC8(dest_page);
		FUNC8(src_page);

		if (!same)
			break;

		srcoff += cmp_len;
		destoff += cmp_len;
		len -= cmp_len;
	}

	*is_same = same;
	return 0;

out_error:
	return error;
}
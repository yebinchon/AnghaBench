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
struct page {int dummy; } ;
struct fuse_copy_state {scalar_t__ write; scalar_t__ move_pages; int /*<<< orphan*/  len; scalar_t__ pipebufs; } ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 unsigned int FUNC2 (struct fuse_copy_state*,void**,unsigned int*) ; 
 int FUNC3 (struct fuse_copy_state*) ; 
 int FUNC4 (struct fuse_copy_state*,struct page*,unsigned int,unsigned int) ; 
 int FUNC5 (struct fuse_copy_state*,struct page**) ; 
 void* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static int FUNC8(struct fuse_copy_state *cs, struct page **pagep,
			  unsigned offset, unsigned count, int zeroing)
{
	int err;
	struct page *page = *pagep;

	if (page && zeroing && count < PAGE_SIZE)
		FUNC0(page);

	while (count) {
		if (cs->write && cs->pipebufs && page) {
			return FUNC4(cs, page, offset, count);
		} else if (!cs->len) {
			if (cs->move_pages && page &&
			    offset == 0 && count == PAGE_SIZE) {
				err = FUNC5(cs, pagep);
				if (err <= 0)
					return err;
			} else {
				err = FUNC3(cs);
				if (err)
					return err;
			}
		}
		if (page) {
			void *mapaddr = FUNC6(page);
			void *buf = mapaddr + offset;
			offset += FUNC2(cs, &buf, &count);
			FUNC7(mapaddr);
		} else
			offset += FUNC2(cs, NULL, &count);
	}
	if (page && !cs->write)
		FUNC1(page);
	return 0;
}
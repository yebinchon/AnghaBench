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
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 unsigned int FUNC0 (void*) ; 
 unsigned int FUNC1 (struct page*) ; 
 struct scatterlist* FUNC2 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,struct page*,unsigned int,unsigned int) ; 
 struct page* FUNC4 (void*) ; 

__attribute__((used)) static int FUNC5(struct scatterlist *sgl, void *buf,
		int nents, unsigned int len)
{
	int n;
	unsigned int l;
	unsigned int off;
	struct page *page;

	if (!nents)
		return 0;

	if (!len)
		return 0;

	n = 0;
	page = FUNC4(buf);
	off = FUNC0(buf);
	l = 0;

	while (len >= l + PAGE_SIZE - off) {
		struct page *npage;

		l += PAGE_SIZE;
		buf += PAGE_SIZE;
		npage = FUNC4(buf);
		if (FUNC1(page) != FUNC1(npage) - l) {
			FUNC3(sgl, page, l - off, off);
			sgl = FUNC2(sgl);
			if (++n == nents || sgl == NULL)
				return n;
			page = npage;
			len -= l - off;
			l = off = 0;
		}
	}
	FUNC3(sgl, page, len, off);
	return n + 1;
}
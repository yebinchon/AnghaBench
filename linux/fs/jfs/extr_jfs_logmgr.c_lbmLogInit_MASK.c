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
typedef  scalar_t__ uint ;
struct page {int dummy; } ;
struct lbuf {char* l_ldata; struct lbuf* l_freelist; int /*<<< orphan*/  l_ioevent; struct jfs_log* l_log; struct page* l_page; scalar_t__ l_offset; } ;
struct jfs_log {struct lbuf* lbuf_free; int /*<<< orphan*/  free_wait; int /*<<< orphan*/ * wqueue; int /*<<< orphan*/ * bp; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int LOGPAGES ; 
 scalar_t__ LOGPSIZE ; 
 scalar_t__ PAGE_SIZE ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct jfs_log*) ; 
 struct lbuf* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct jfs_log*) ; 
 char* FUNC7 (struct page*) ; 

__attribute__((used)) static int FUNC8(struct jfs_log * log)
{				/* log inode */
	int i;
	struct lbuf *lbuf;

	FUNC4("lbmLogInit: log:0x%p", log);

	/* initialize current buffer cursor */
	log->bp = NULL;

	/* initialize log device write queue */
	log->wqueue = NULL;

	/*
	 * Each log has its own buffer pages allocated to it.  These are
	 * not managed by the page cache.  This ensures that a transaction
	 * writing to the log does not block trying to allocate a page from
	 * the page cache (for the log).  This would be bad, since page
	 * allocation waits on the kswapd thread that may be committing inodes
	 * which would cause log activity.  Was that clear?  I'm trying to
	 * avoid deadlock here.
	 */
	FUNC3(&log->free_wait);

	log->lbuf_free = NULL;

	for (i = 0; i < LOGPAGES;) {
		char *buffer;
		uint offset;
		struct page *page = FUNC1(GFP_KERNEL | __GFP_ZERO);

		if (!page)
			goto error;
		buffer = FUNC7(page);
		for (offset = 0; offset < PAGE_SIZE; offset += LOGPSIZE) {
			lbuf = FUNC5(sizeof(struct lbuf), GFP_KERNEL);
			if (lbuf == NULL) {
				if (offset == 0)
					FUNC0(page);
				goto error;
			}
			if (offset) /* we already have one reference */
				FUNC2(page);
			lbuf->l_offset = offset;
			lbuf->l_ldata = buffer + offset;
			lbuf->l_page = page;
			lbuf->l_log = log;
			FUNC3(&lbuf->l_ioevent);

			lbuf->l_freelist = log->lbuf_free;
			log->lbuf_free = lbuf;
			i++;
		}
	}

	return (0);

      error:
	FUNC6(log);
	return -ENOMEM;
}
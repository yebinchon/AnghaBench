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
struct lbuf {int /*<<< orphan*/  l_page; struct lbuf* l_freelist; } ;
struct jfs_log {struct lbuf* lbuf_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct jfs_log*) ; 
 int /*<<< orphan*/  FUNC2 (struct lbuf*) ; 

__attribute__((used)) static void FUNC3(struct jfs_log * log)
{
	struct lbuf *lbuf;

	FUNC1("lbmLogShutdown: log:0x%p", log);

	lbuf = log->lbuf_free;
	while (lbuf) {
		struct lbuf *next = lbuf->l_freelist;
		FUNC0(lbuf->l_page);
		FUNC2(lbuf);
		lbuf = next;
	}
}
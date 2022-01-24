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
struct nfs_page {unsigned int wb_pgbase; unsigned int wb_bytes; int /*<<< orphan*/  wb_head; int /*<<< orphan*/  wb_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_page*) ; 
 struct nfs_page* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_page*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct nfs_page *req)
{
	struct nfs_page *tmp;
	unsigned int pos = 0;
	unsigned int len = FUNC3(req->wb_page);

	FUNC0(req);

	for (;;) {
		tmp = FUNC1(req->wb_head, pos);
		if (!tmp)
			break;
		pos = tmp->wb_pgbase + tmp->wb_bytes;
	}

	FUNC2(req);
	return pos >= len;
}
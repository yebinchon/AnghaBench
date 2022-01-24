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
struct nfs_page {int dummy; } ;
struct list_head {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 scalar_t__ FUNC1 (int) ; 
 struct nfs_page* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_page*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_page*,int) ; 

__attribute__((used)) static void FUNC6(struct list_head *head, int error)
{
	struct nfs_page	*req;

	while (!FUNC0(head)) {
		req = FUNC2(head->next);
		FUNC3(req);
		if (FUNC1(error))
			FUNC5(req, error);
		else
			FUNC4(req);
	}
}
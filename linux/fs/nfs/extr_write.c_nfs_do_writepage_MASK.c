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
struct writeback_control {int dummy; } ;
struct page {int dummy; } ;
struct nfs_pageio_descriptor {int dummy; } ;

/* Variables and functions */
 int AOP_WRITEPAGE_ACTIVATE ; 
 int EAGAIN ; 
 int FUNC0 (struct nfs_pageio_descriptor*,struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pageio_descriptor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct writeback_control*,struct page*) ; 

__attribute__((used)) static int FUNC4(struct page *page, struct writeback_control *wbc,
			    struct nfs_pageio_descriptor *pgio)
{
	int ret;

	FUNC1(pgio, FUNC2(page));
	ret = FUNC0(pgio, page);
	if (ret == -EAGAIN) {
		FUNC3(wbc, page);
		ret = AOP_WRITEPAGE_ACTIVATE;
	}
	return ret;
}
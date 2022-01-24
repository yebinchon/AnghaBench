#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct page {TYPE_1__* mapping; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct page*,void*,int) ; 
 int FUNC2 (void*,int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

__attribute__((used)) static void FUNC4(struct page *page,
					       void *context,
					       int error)
{
	FUNC1(FSCACHE,
		 "NFS: readpage_from_fscache_complete (0x%p/0x%p/%d)\n",
		 page, context, error);

	/* if the read completes with an error, we just unlock the page and let
	 * the VM reissue the readpage */
	if (!error) {
		FUNC0(page);
		FUNC3(page);
	} else {
		error = FUNC2(context, page->mapping->host, page);
		if (error)
			FUNC3(page);
	}
}
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
struct address_space {int /*<<< orphan*/  nrexceptional; int /*<<< orphan*/  i_pages; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  PAGECACHE_TAG_TOWRITE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct address_space*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  xas ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct address_space *mapping,
					  pgoff_t index, bool trunc)
{
	FUNC1(xas, &mapping->i_pages, index);
	int ret = 0;
	void *entry;

	FUNC7(&xas);
	entry = FUNC3(&xas, 0);
	if (!entry || FUNC0(!FUNC5(entry)))
		goto out;
	if (!trunc &&
	    (FUNC6(&xas, PAGECACHE_TAG_DIRTY) ||
	     FUNC6(&xas, PAGECACHE_TAG_TOWRITE)))
		goto out;
	FUNC2(entry, mapping, trunc);
	FUNC8(&xas, NULL);
	mapping->nrexceptional--;
	ret = 1;
out:
	FUNC4(&xas, entry);
	FUNC9(&xas);
	return ret;
}
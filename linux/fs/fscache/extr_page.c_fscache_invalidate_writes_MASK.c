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
struct page {int /*<<< orphan*/  index; } ;
struct fscache_cookie {int /*<<< orphan*/  flags; int /*<<< orphan*/  stores_lock; int /*<<< orphan*/  stores; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int /*<<< orphan*/  FSCACHE_COOKIE_PENDING_TAG ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  fscache_page_inval ; 
 int /*<<< orphan*/  fscache_page_radix_delete ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct fscache_cookie*,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fscache_cookie*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC11(struct fscache_cookie *cookie)
{
	struct page *page;
	void *results[16];
	int n, i;

	FUNC1("");

	for (;;) {
		FUNC6(&cookie->stores_lock);
		n = FUNC5(&cookie->stores, results, 0,
					       FUNC0(results),
					       FSCACHE_COOKIE_PENDING_TAG);
		if (n == 0) {
			FUNC7(&cookie->stores_lock);
			break;
		}

		for (i = n - 1; i >= 0; i--) {
			page = results[i];
			FUNC4(&cookie->stores, page->index);
			FUNC8(cookie, page, fscache_page_radix_delete);
			FUNC8(cookie, page, fscache_page_inval);
		}

		FUNC7(&cookie->stores_lock);

		for (i = n - 1; i >= 0; i--)
			FUNC3(results[i]);
	}

	FUNC10(&cookie->flags, 0);
	FUNC9(cookie);

	FUNC2("");
}
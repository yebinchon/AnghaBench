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
struct cache_head {int /*<<< orphan*/  flags; } ;
struct cache_detail {int /*<<< orphan*/  hash_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_NEGATIVE ; 
 scalar_t__ CACHE_NEW_EXPIRY ; 
 int EAGAIN ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct cache_head*,scalar_t__,struct cache_detail*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_head*,struct cache_detail*) ; 
 int FUNC2 (struct cache_head*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct cache_detail *detail, struct cache_head *h)
{
	int rv;

	FUNC5(&detail->hash_lock);
	rv = FUNC2(h);
	if (rv == -EAGAIN) {
		FUNC4(CACHE_NEGATIVE, &h->flags);
		FUNC0(h, FUNC3()+CACHE_NEW_EXPIRY,
				   detail);
		rv = -ENOENT;
	}
	FUNC6(&detail->hash_lock);
	FUNC1(h, detail);
	return rv;
}
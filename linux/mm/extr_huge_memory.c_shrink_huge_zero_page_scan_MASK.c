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
struct shrinker {int dummy; } ;
struct shrink_control {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long HPAGE_PMD_NR ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  huge_zero_page ; 
 int /*<<< orphan*/  huge_zero_refcount ; 
 struct page* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long FUNC5(struct shrinker *shrink,
				       struct shrink_control *sc)
{
	if (FUNC2(&huge_zero_refcount, 1, 0) == 1) {
		struct page *zero_page = FUNC4(&huge_zero_page, NULL);
		FUNC0(zero_page == NULL);
		FUNC1(zero_page, FUNC3(zero_page));
		return HPAGE_PMD_NR;
	}

	return 0;
}
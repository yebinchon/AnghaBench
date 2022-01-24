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
struct page {int /*<<< orphan*/  lru; } ;
struct list_head {int dummy; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 struct page* FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*,struct page*) ; 

__attribute__((used)) static void FUNC4(struct address_space *mapping,
					      struct list_head *pages)
{
	struct page *victim;

	while (!FUNC1(pages)) {
		victim = FUNC2(pages);
		FUNC0(&victim->lru);
		FUNC3(mapping, victim);
	}
}
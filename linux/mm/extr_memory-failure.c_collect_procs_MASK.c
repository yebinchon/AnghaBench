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
struct to_kill {int dummy; } ;
struct page {int /*<<< orphan*/  mapping; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,struct list_head*,struct to_kill**,int) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,struct list_head*,struct to_kill**,int) ; 
 int /*<<< orphan*/  FUNC3 (struct to_kill*) ; 
 struct to_kill* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct page *page, struct list_head *tokill,
				int force_early)
{
	struct to_kill *tk;

	if (!page->mapping)
		return;

	tk = FUNC4(sizeof(struct to_kill), GFP_NOIO);
	if (!tk)
		return;
	if (FUNC0(page))
		FUNC1(page, tokill, &tk, force_early);
	else
		FUNC2(page, tokill, &tk, force_early);
	FUNC3(tk);
}
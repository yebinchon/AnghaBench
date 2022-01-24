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
struct pagevec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UNEVICTABLE_PGMUNLOCKED ; 
 int /*<<< orphan*/  UNEVICTABLE_PGRESCUED ; 
 int /*<<< orphan*/  FUNC0 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pagevec*) ; 

__attribute__((used)) static void FUNC3(struct pagevec *pvec, int pgrescued)
{
	FUNC1(UNEVICTABLE_PGMUNLOCKED, FUNC2(pvec));
	/*
	 *__pagevec_lru_add() calls release_pages() so we don't call
	 * put_page() explicitly
	 */
	FUNC0(pvec);
	FUNC1(UNEVICTABLE_PGRESCUED, pgrescued);
}
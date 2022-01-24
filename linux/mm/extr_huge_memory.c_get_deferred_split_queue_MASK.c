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
struct deferred_split {int dummy; } ;
struct pglist_data {struct deferred_split deferred_split_queue; } ;
struct page {int dummy; } ;

/* Variables and functions */
 struct pglist_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 

__attribute__((used)) static inline struct deferred_split *FUNC2(struct page *page)
{
	struct pglist_data *pgdat = FUNC0(FUNC1(page));

	return &pgdat->deferred_split_queue;
}
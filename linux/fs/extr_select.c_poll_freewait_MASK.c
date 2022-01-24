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
struct poll_wqueues {int inline_index; struct poll_table_entry* inline_entries; struct poll_table_page* table; } ;
struct poll_table_page {struct poll_table_page* next; struct poll_table_entry* entries; struct poll_table_entry* entry; } ;
struct poll_table_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct poll_table_entry*) ; 

void FUNC2(struct poll_wqueues *pwq)
{
	struct poll_table_page * p = pwq->table;
	int i;
	for (i = 0; i < pwq->inline_index; i++)
		FUNC1(pwq->inline_entries + i);
	while (p) {
		struct poll_table_entry * entry;
		struct poll_table_page *old;

		entry = p->entry;
		do {
			entry--;
			FUNC1(entry);
		} while (entry > p->entries);
		old = p;
		p = p->next;
		FUNC0((unsigned long) old);
	}
}
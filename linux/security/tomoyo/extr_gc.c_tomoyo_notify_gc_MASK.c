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
struct tomoyo_io_buffer {int users; struct tomoyo_io_buffer* write_buf; struct tomoyo_io_buffer* read_buf; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tomoyo_io_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tomoyo_gc_thread ; 
 int /*<<< orphan*/  tomoyo_io_buffer_list ; 
 int /*<<< orphan*/  tomoyo_io_buffer_list_lock ; 

void FUNC6(struct tomoyo_io_buffer *head, const bool is_register)
{
	bool is_write = false;

	FUNC4(&tomoyo_io_buffer_list_lock);
	if (is_register) {
		head->users = 1;
		FUNC2(&head->list, &tomoyo_io_buffer_list);
	} else {
		is_write = head->write_buf != NULL;
		if (!--head->users) {
			FUNC3(&head->list);
			FUNC0(head->read_buf);
			FUNC0(head->write_buf);
			FUNC0(head);
		}
	}
	FUNC5(&tomoyo_io_buffer_list_lock);
	if (is_write)
		FUNC1(tomoyo_gc_thread, NULL, "GC for TOMOYO");
}
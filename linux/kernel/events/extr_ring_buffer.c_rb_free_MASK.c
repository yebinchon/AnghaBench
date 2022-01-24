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
struct ring_buffer {int nr_pages; scalar_t__* data_pages; scalar_t__ user_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ring_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

void FUNC2(struct ring_buffer *rb)
{
	int i;

	FUNC1((unsigned long)rb->user_page);
	for (i = 0; i < rb->nr_pages; i++)
		FUNC1((unsigned long)rb->data_pages[i]);
	FUNC0(rb);
}
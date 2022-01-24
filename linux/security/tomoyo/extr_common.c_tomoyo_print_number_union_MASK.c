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
struct tomoyo_number_union {int dummy; } ;
struct tomoyo_io_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tomoyo_io_buffer*,struct tomoyo_number_union const*) ; 
 int /*<<< orphan*/  FUNC1 (struct tomoyo_io_buffer*) ; 

__attribute__((used)) static void FUNC2(struct tomoyo_io_buffer *head,
				      const struct tomoyo_number_union *ptr)
{
	FUNC1(head);
	FUNC0(head, ptr);
}
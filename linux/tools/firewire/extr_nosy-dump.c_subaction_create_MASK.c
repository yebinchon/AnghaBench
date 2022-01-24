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
typedef  int /*<<< orphan*/  uint32_t ;
struct subaction {size_t length; int /*<<< orphan*/  packet; int /*<<< orphan*/  ack; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct subaction* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static struct subaction *
FUNC3(uint32_t *data, size_t length)
{
	struct subaction *sa;

	/* we put the ack in the subaction struct for easy access. */
	sa = FUNC1(sizeof *sa - sizeof sa->packet + length);
	if (!sa)
		FUNC0(EXIT_FAILURE);
	sa->ack = data[length / 4 - 1];
	sa->length = length;
	FUNC2(&sa->packet, data, length);

	return sa;
}
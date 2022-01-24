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
struct ordered_events {int /*<<< orphan*/  data; int /*<<< orphan*/  deliver; } ;
typedef  int /*<<< orphan*/  ordered_events__deliver_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ordered_events*,char,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ordered_events*) ; 
 int /*<<< orphan*/  FUNC2 (struct ordered_events*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct ordered_events *oe)
{
	ordered_events__deliver_t old_deliver = oe->deliver;

	FUNC1(oe);
	FUNC0(oe, '\0', sizeof(*oe));
	FUNC2(oe, old_deliver, oe->data);
}
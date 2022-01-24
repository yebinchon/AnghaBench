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
struct urb {scalar_t__ context; } ;
struct message {scalar_t__ done; scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct message*) ; 
 int /*<<< orphan*/  FUNC1 (struct message*,struct urb*) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 

__attribute__((used)) static void FUNC3(struct urb *urb)
{
	struct message *msg = (struct message *)urb->context;

	if (msg->done >= msg->size) {
		FUNC2(urb);
		FUNC0(msg);
	} else
		FUNC1(msg, urb);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  state; int /*<<< orphan*/  reseq_queue; int /*<<< orphan*/  ack_queue; int /*<<< orphan*/  frag_queue; int /*<<< orphan*/  write_queue; int /*<<< orphan*/  refcount; } ;
typedef  TYPE_1__ ax25_cb ;

/* Variables and functions */
 int /*<<< orphan*/  AX25_STATE_0 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

ax25_cb *FUNC5(void)
{
	ax25_cb *ax25;

	if ((ax25 = FUNC2(sizeof(*ax25), GFP_ATOMIC)) == NULL)
		return NULL;

	FUNC3(&ax25->refcount, 1);

	FUNC4(&ax25->write_queue);
	FUNC4(&ax25->frag_queue);
	FUNC4(&ax25->ack_queue);
	FUNC4(&ax25->reseq_queue);

	FUNC1(ax25);

	FUNC0(ax25, NULL);

	ax25->state = AX25_STATE_0;

	return ax25;
}
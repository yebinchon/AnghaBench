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
struct x25_neigh {int state; } ;

/* Variables and functions */
#define  X25_LINK_STATE_0 129 
#define  X25_LINK_STATE_1 128 
 void* X25_LINK_STATE_2 ; 
 int /*<<< orphan*/  FUNC0 (struct x25_neigh*) ; 
 int /*<<< orphan*/  FUNC1 (struct x25_neigh*) ; 

void FUNC2(struct x25_neigh *nb)
{
	switch (nb->state) {
	case X25_LINK_STATE_0:
		nb->state = X25_LINK_STATE_2;
		break;
	case X25_LINK_STATE_1:
		FUNC1(nb);
		nb->state = X25_LINK_STATE_2;
		FUNC0(nb);
		break;
	}
}
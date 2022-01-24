#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nf_queue_handler {int /*<<< orphan*/  (* nf_hook_drop ) (struct net*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  queue_handler; } ;
struct net {TYPE_1__ nf; } ;

/* Variables and functions */
 struct nf_queue_handler* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 

void FUNC4(struct net *net)
{
	const struct nf_queue_handler *qh;

	FUNC1();
	qh = FUNC0(net->nf.queue_handler);
	if (qh)
		qh->nf_hook_drop(net);
	FUNC2();
}
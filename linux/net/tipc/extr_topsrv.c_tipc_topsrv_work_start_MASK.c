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
struct tipc_topsrv {void* rcv_wq; void* send_wq; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct tipc_topsrv *s)
{
	s->rcv_wq = FUNC0("tipc_rcv", 0);
	if (!s->rcv_wq) {
		FUNC2("can't start tipc receive workqueue\n");
		return -ENOMEM;
	}

	s->send_wq = FUNC0("tipc_send", 0);
	if (!s->send_wq) {
		FUNC2("can't start tipc send workqueue\n");
		FUNC1(s->rcv_wq);
		return -ENOMEM;
	}

	return 0;
}
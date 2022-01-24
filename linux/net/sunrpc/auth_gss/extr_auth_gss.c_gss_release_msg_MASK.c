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
struct net {int dummy; } ;
struct gss_upcall_msg {int /*<<< orphan*/  service_name; TYPE_1__* auth; int /*<<< orphan*/  rpc_waitqueue; int /*<<< orphan*/ * ctx; int /*<<< orphan*/  list; int /*<<< orphan*/  count; } ;
struct TYPE_2__ {struct net* net; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gss_upcall_msg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct gss_upcall_msg *gss_msg)
{
	struct net *net = gss_msg->auth->net;
	if (!FUNC7(&gss_msg->count))
		return;
	FUNC6(net);
	FUNC0(!FUNC5(&gss_msg->list));
	if (gss_msg->ctx != NULL)
		FUNC2(gss_msg->ctx);
	FUNC8(&gss_msg->rpc_waitqueue);
	FUNC1(gss_msg->auth);
	FUNC4(gss_msg->service_name);
	FUNC3(gss_msg);
}
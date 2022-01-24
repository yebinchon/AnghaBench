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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  count; } ;
struct net {TYPE_1__ ct; } ;
struct iter_data {int (* iter ) (struct nf_conn*,void*) ;struct net* net; void* data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iter_net_only ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct iter_data*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct net *net,
			       int (*iter)(struct nf_conn *i, void *data),
			       void *data, u32 portid, int report)
{
	struct iter_data d;

	FUNC1();

	if (FUNC0(&net->ct.count) == 0)
		return;

	d.iter = iter;
	d.data = data;
	d.net = net;

	FUNC2(iter_net_only, &d, portid, report);
}
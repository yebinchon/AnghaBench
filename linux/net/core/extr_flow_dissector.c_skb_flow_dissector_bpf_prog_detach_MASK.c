#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union bpf_attr {int dummy; } bpf_attr ;
struct net {int /*<<< orphan*/  flow_dissector_prog; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_4__ {TYPE_1__* nsproxy; } ;
struct TYPE_3__ {struct net* net_ns; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_prog*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  flow_dissector_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct bpf_prog* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(const union bpf_attr *attr)
{
	struct bpf_prog *attached;
	struct net *net;

	net = current->nsproxy->net_ns;
	FUNC3(&flow_dissector_mutex);
	attached = FUNC5(net->flow_dissector_prog,
					     FUNC2(&flow_dissector_mutex));
	if (!attached) {
		FUNC4(&flow_dissector_mutex);
		return -ENOENT;
	}
	FUNC0(net->flow_dissector_prog, NULL);
	FUNC1(attached);
	FUNC4(&flow_dissector_mutex);
	return 0;
}
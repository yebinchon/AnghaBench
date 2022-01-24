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
struct net_device {int dummy; } ;
struct bpf_prog_offload {struct net_device* netdev; } ;
struct bpf_prog {TYPE_1__* aux; } ;
struct bpf_offload_netdev {scalar_t__ offdev; } ;
struct TYPE_2__ {struct bpf_prog_offload* offload; } ;

/* Variables and functions */
 struct bpf_offload_netdev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC2(struct bpf_prog *prog,
				    struct net_device *netdev)
{
	struct bpf_offload_netdev *ondev1, *ondev2;
	struct bpf_prog_offload *offload;

	if (!FUNC1(prog->aux))
		return false;

	offload = prog->aux->offload;
	if (!offload)
		return false;
	if (offload->netdev == netdev)
		return true;

	ondev1 = FUNC0(offload->netdev);
	ondev2 = FUNC0(netdev);

	return ondev1 && ondev2 && ondev1->offdev == ondev2->offdev;
}
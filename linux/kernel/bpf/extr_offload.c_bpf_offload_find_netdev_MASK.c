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
struct net_device {int dummy; } ;
struct bpf_offload_netdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  bpf_devs_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  offdevs ; 
 int /*<<< orphan*/  offdevs_inited ; 
 int /*<<< orphan*/  offdevs_params ; 
 struct bpf_offload_netdev* FUNC1 (int /*<<< orphan*/ *,struct net_device**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct bpf_offload_netdev *
FUNC2(struct net_device *netdev)
{
	FUNC0(&bpf_devs_lock);

	if (!offdevs_inited)
		return NULL;
	return FUNC1(&offdevs, &netdev, offdevs_params);
}
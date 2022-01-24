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
struct bpf_offload_netdev {int /*<<< orphan*/  offdev_netdevs; int /*<<< orphan*/  l; int /*<<< orphan*/  maps; int /*<<< orphan*/  progs; struct bpf_offload_dev* offdev; struct net_device* netdev; } ;
struct bpf_offload_dev {int /*<<< orphan*/  netdevs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bpf_devs_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_offload_netdev*) ; 
 struct bpf_offload_netdev* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  offdevs ; 
 int /*<<< orphan*/  offdevs_params ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct bpf_offload_dev *offdev,
				    struct net_device *netdev)
{
	struct bpf_offload_netdev *ondev;
	int err;

	ondev = FUNC3(sizeof(*ondev), GFP_KERNEL);
	if (!ondev)
		return -ENOMEM;

	ondev->netdev = netdev;
	ondev->offdev = offdev;
	FUNC0(&ondev->progs);
	FUNC0(&ondev->maps);

	FUNC1(&bpf_devs_lock);
	err = FUNC6(&offdevs, &ondev->l, offdevs_params);
	if (err) {
		FUNC5(netdev, "failed to register for BPF offload\n");
		goto err_unlock_free;
	}

	FUNC4(&ondev->offdev_netdevs, &offdev->netdevs);
	FUNC7(&bpf_devs_lock);
	return 0;

err_unlock_free:
	FUNC7(&bpf_devs_lock);
	FUNC2(ondev);
	return err;
}
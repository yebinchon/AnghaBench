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
struct bpf_prog_offload_ops {int dummy; } ;
struct bpf_offload_dev {int /*<<< orphan*/  netdevs; void* priv; struct bpf_prog_offload_ops const* ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct bpf_offload_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bpf_devs_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct bpf_offload_dev* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  offdevs ; 
 int offdevs_inited ; 
 int /*<<< orphan*/  offdevs_params ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct bpf_offload_dev *
FUNC6(const struct bpf_prog_offload_ops *ops, void *priv)
{
	struct bpf_offload_dev *offdev;
	int err;

	FUNC2(&bpf_devs_lock);
	if (!offdevs_inited) {
		err = FUNC4(&offdevs, &offdevs_params);
		if (err)
			return FUNC0(err);
		offdevs_inited = true;
	}
	FUNC5(&bpf_devs_lock);

	offdev = FUNC3(sizeof(*offdev), GFP_KERNEL);
	if (!offdev)
		return FUNC0(-ENOMEM);

	offdev->ops = ops;
	offdev->priv = priv;
	FUNC1(&offdev->netdevs);

	return offdev;
}
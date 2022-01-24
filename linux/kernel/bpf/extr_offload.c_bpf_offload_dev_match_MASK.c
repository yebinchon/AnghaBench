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
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bpf_prog*,struct net_device*) ; 
 int /*<<< orphan*/  bpf_devs_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(struct bpf_prog *prog, struct net_device *netdev)
{
	bool ret;

	FUNC1(&bpf_devs_lock);
	ret = FUNC0(prog, netdev);
	FUNC2(&bpf_devs_lock);

	return ret;
}
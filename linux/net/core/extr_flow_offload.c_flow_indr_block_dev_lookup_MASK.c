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
struct flow_indr_block_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  flow_indr_setup_block_ht_params ; 
 int /*<<< orphan*/  indr_setup_block_ht ; 
 struct flow_indr_block_dev* FUNC0 (int /*<<< orphan*/ *,struct net_device**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct flow_indr_block_dev *
FUNC1(struct net_device *dev)
{
	return FUNC0(&indr_setup_block_ht, &dev,
				      flow_indr_setup_block_ht_params);
}
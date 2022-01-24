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
typedef  int /*<<< orphan*/  flow_indr_block_bind_cb_t ;

/* Variables and functions */
 int FUNC0 (struct net_device*,void*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct net_device *dev, void *cb_priv,
				flow_indr_block_bind_cb_t *cb,
				void *cb_ident)
{
	int err;

	FUNC1();
	err = FUNC0(dev, cb_priv, cb, cb_ident);
	FUNC2();

	return err;
}
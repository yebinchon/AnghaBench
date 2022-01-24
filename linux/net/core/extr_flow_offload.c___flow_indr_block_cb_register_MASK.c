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
struct flow_indr_block_cb {int /*<<< orphan*/  cb_priv; int /*<<< orphan*/  cb; } ;
typedef  int /*<<< orphan*/  flow_indr_block_bind_cb_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FLOW_BLOCK_BIND ; 
 int FUNC0 (struct flow_indr_block_cb*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct flow_indr_block_cb* FUNC2 (struct flow_indr_block_dev*,void*,int /*<<< orphan*/ *,void*) ; 
 struct flow_indr_block_dev* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct flow_indr_block_dev*) ; 

int FUNC5(struct net_device *dev, void *cb_priv,
				  flow_indr_block_bind_cb_t *cb,
				  void *cb_ident)
{
	struct flow_indr_block_cb *indr_block_cb;
	struct flow_indr_block_dev *indr_dev;
	int err;

	indr_dev = FUNC3(dev);
	if (!indr_dev)
		return -ENOMEM;

	indr_block_cb = FUNC2(indr_dev, cb_priv, cb, cb_ident);
	err = FUNC0(indr_block_cb);
	if (err)
		goto err_dev_put;

	FUNC1(dev, indr_block_cb->cb, indr_block_cb->cb_priv,
			   FLOW_BLOCK_BIND);

	return 0;

err_dev_put:
	FUNC4(indr_dev);
	return err;
}
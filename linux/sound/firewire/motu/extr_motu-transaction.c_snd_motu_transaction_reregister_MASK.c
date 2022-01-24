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
struct TYPE_3__ {int offset; int /*<<< orphan*/ * callback_data; } ;
struct snd_motu {TYPE_1__ async_handler; int /*<<< orphan*/  unit; } ;
struct fw_device {TYPE_2__* card; } ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int node_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_ADDR_HI ; 
 int /*<<< orphan*/  ASYNC_ADDR_LO ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct fw_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_motu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC3(struct snd_motu *motu)
{
	struct fw_device *device = FUNC1(motu->unit);
	__be32 data;
	int err;

	if (motu->async_handler.callback_data == NULL)
		return -EINVAL;

	/* Register messaging address. Block transaction is not allowed. */
	data = FUNC0((device->card->node_id << 16) |
			   (motu->async_handler.offset >> 32));
	err = FUNC2(motu, ASYNC_ADDR_HI, &data,
					 sizeof(data));
	if (err < 0)
		return err;

	data = FUNC0(motu->async_handler.offset);
	return FUNC2(motu, ASYNC_ADDR_LO, &data,
					  sizeof(data));
}
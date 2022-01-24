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
struct TYPE_2__ {int length; struct snd_dg00x* callback_data; int /*<<< orphan*/  address_callback; } ;
struct snd_dg00x {TYPE_1__ async_handler; } ;
struct fw_address_region {int start; int end; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,struct fw_address_region const*) ; 
 int /*<<< orphan*/  handle_message ; 
 int FUNC1 (struct snd_dg00x*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_dg00x*) ; 

int FUNC3(struct snd_dg00x *dg00x)
{
	static const struct fw_address_region resp_register_region = {
		.start	= 0xffffe0000000ull,
		.end	= 0xffffe000ffffull,
	};
	int err;

	dg00x->async_handler.length = 4;
	dg00x->async_handler.address_callback = handle_message;
	dg00x->async_handler.callback_data = dg00x;

	err = FUNC0(&dg00x->async_handler,
					  &resp_register_region);
	if (err < 0)
		return err;

	err = FUNC1(dg00x);
	if (err < 0)
		FUNC2(dg00x);

	return err;
}
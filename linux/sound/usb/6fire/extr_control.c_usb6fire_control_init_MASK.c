#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sfire_chip {struct control_runtime* control; TYPE_1__* dev; int /*<<< orphan*/  card; struct comm_runtime* comm; } ;
struct control_runtime {int /*<<< orphan*/  set_channels; int /*<<< orphan*/  set_rate; int /*<<< orphan*/  (* update_streaming ) (struct control_runtime*) ;struct sfire_chip* chip; } ;
struct comm_runtime {int /*<<< orphan*/  (* write8 ) (struct comm_runtime*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  value; int /*<<< orphan*/  reg; scalar_t__ type; } ;
struct TYPE_6__ {scalar_t__ name; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* elements ; 
 TYPE_3__* init_data ; 
 int /*<<< orphan*/  FUNC1 (struct control_runtime*) ; 
 struct control_runtime* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mute_elements ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct control_runtime*) ; 
 int /*<<< orphan*/  FUNC5 (struct comm_runtime*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct control_runtime*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct control_runtime*) ; 
 int /*<<< orphan*/  FUNC8 (struct control_runtime*) ; 
 int /*<<< orphan*/  FUNC9 (struct control_runtime*) ; 
 int /*<<< orphan*/  FUNC10 (struct control_runtime*) ; 
 int /*<<< orphan*/  FUNC11 (struct control_runtime*) ; 
 int /*<<< orphan*/  usb6fire_control_set_channels ; 
 int /*<<< orphan*/  usb6fire_control_set_rate ; 
 int /*<<< orphan*/  FUNC12 (struct control_runtime*) ; 
 int /*<<< orphan*/  vol_elements ; 

int FUNC13(struct sfire_chip *chip)
{
	int i;
	int ret;
	struct control_runtime *rt = FUNC2(sizeof(struct control_runtime),
			GFP_KERNEL);
	struct comm_runtime *comm_rt = chip->comm;

	if (!rt)
		return -ENOMEM;

	rt->chip = chip;
	rt->update_streaming = usb6fire_control_streaming_update;
	rt->set_rate = usb6fire_control_set_rate;
	rt->set_channels = usb6fire_control_set_channels;

	i = 0;
	while (init_data[i].type) {
		comm_rt->write8(comm_rt, init_data[i].type, init_data[i].reg,
				init_data[i].value);
		i++;
	}

	FUNC9(rt);
	FUNC8(rt);
	FUNC11(rt);
	FUNC10(rt);
	FUNC7(rt);
	FUNC12(rt);

	ret = FUNC6(rt, chip->card,
		"Master Playback Volume", vol_elements);
	if (ret) {
		FUNC0(&chip->dev->dev, "cannot add control.\n");
		FUNC1(rt);
		return ret;
	}
	ret = FUNC6(rt, chip->card,
		"Master Playback Switch", mute_elements);
	if (ret) {
		FUNC0(&chip->dev->dev, "cannot add control.\n");
		FUNC1(rt);
		return ret;
	}

	i = 0;
	while (elements[i].name) {
		ret = FUNC3(chip->card, FUNC4(&elements[i], rt));
		if (ret < 0) {
			FUNC1(rt);
			FUNC0(&chip->dev->dev, "cannot add control.\n");
			return ret;
		}
		i++;
	}

	chip->control = rt;
	return 0;
}
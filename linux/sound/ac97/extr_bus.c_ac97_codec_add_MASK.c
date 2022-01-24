#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ac97_controller {int /*<<< orphan*/  parent; int /*<<< orphan*/  adap; struct ac97_codec_device** codecs; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * parent; int /*<<< orphan*/ * bus; int /*<<< orphan*/  release; } ;
struct ac97_codec_device {unsigned int vendor_id; int num; TYPE_1__ dev; struct ac97_controller* ac97_ctrl; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ac97_bus_type ; 
 int /*<<< orphan*/  ac97_codec_release ; 
 int /*<<< orphan*/  FUNC0 (struct ac97_controller*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct ac97_codec_device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct ac97_controller *ac97_ctrl, int idx,
		   unsigned int vendor_id)
{
	struct ac97_codec_device *codec;
	int ret;

	codec = FUNC5(sizeof(*codec), GFP_KERNEL);
	if (!codec)
		return -ENOMEM;
	ac97_ctrl->codecs[idx] = codec;
	codec->vendor_id = vendor_id;
	codec->dev.release = ac97_codec_release;
	codec->dev.bus = &ac97_bus_type;
	codec->dev.parent = &ac97_ctrl->adap;
	codec->num = idx;
	codec->ac97_ctrl = ac97_ctrl;

	FUNC4(&codec->dev);
	FUNC2(&codec->dev, "%s:%u", FUNC1(ac97_ctrl->parent), idx);
	codec->dev.of_node = FUNC0(ac97_ctrl, idx,
						      vendor_id);

	ret = FUNC3(&codec->dev);
	if (ret) {
		FUNC6(&codec->dev);
		return ret;
	}

	return 0;
}
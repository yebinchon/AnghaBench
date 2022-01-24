#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* free ) (struct hda_codec*) ;} ;
struct hda_codec {TYPE_1__ patch_ops; int /*<<< orphan*/  core; TYPE_5__* bus; } ;
struct device {TYPE_2__* driver; } ;
struct TYPE_8__ {TYPE_4__* ext_ops; } ;
struct TYPE_10__ {TYPE_3__ core; } ;
struct TYPE_9__ {int (* hdev_detach ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 struct hda_codec* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct hda_codec *codec = FUNC1(dev);

	if (codec->bus->core.ext_ops) {
		if (FUNC0(!codec->bus->core.ext_ops->hdev_detach))
			return -EINVAL;
		return codec->bus->core.ext_ops->hdev_detach(&codec->core);
	}

	if (codec->patch_ops.free)
		codec->patch_ops.free(codec);
	FUNC3(codec);
	FUNC2(dev->driver->owner);
	return 0;
}
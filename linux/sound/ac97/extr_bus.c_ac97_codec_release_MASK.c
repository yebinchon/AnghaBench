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
struct device {int /*<<< orphan*/  of_node; } ;
struct ac97_controller {int /*<<< orphan*/ ** codecs; } ;
struct ac97_codec_device {size_t num; struct ac97_controller* ac97_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ac97_codec_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ac97_codec_device* FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct ac97_codec_device *adev;
	struct ac97_controller *ac97_ctrl;

	adev = FUNC2(dev);
	ac97_ctrl = adev->ac97_ctrl;
	ac97_ctrl->codecs[adev->num] = NULL;
	FUNC1(dev->of_node);
	FUNC0(adev);
}
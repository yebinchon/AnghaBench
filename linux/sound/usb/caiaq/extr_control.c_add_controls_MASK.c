#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  card; } ;
struct snd_usb_caiaqdev {TYPE_1__ chip; } ;
struct snd_kcontrol {int dummy; } ;
struct caiaq_controller {int /*<<< orphan*/  index; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  private_value; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 TYPE_2__ kcontrol_template ; 
 int FUNC0 (int /*<<< orphan*/ ,struct snd_kcontrol*) ; 
 struct snd_kcontrol* FUNC1 (TYPE_2__*,struct snd_usb_caiaqdev*) ; 

__attribute__((used)) static int FUNC2(struct caiaq_controller *c, int num,
			struct snd_usb_caiaqdev *cdev)
{
	int i, ret;
	struct snd_kcontrol *kc;

	for (i = 0; i < num; i++, c++) {
		kcontrol_template.name = c->name;
		kcontrol_template.private_value = c->index;
		kc = FUNC1(&kcontrol_template, cdev);
		ret = FUNC0(cdev->chip.card, kc);
		if (ret < 0)
			return ret;
	}

	return 0;
}
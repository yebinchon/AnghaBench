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
struct snd_riptide {unsigned int device_id; scalar_t__ rmidi; struct cmdif* cif; scalar_t__ port; } ;
struct riptideport {int dummy; } ;
struct cmdif {struct riptideport* hwport; scalar_t__ is_reset; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct cmdif*) ; 
 int /*<<< orphan*/  FUNC1 (struct riptideport*) ; 
 struct cmdif* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cmdif*,struct snd_riptide*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_riptide *chip)
{
	struct cmdif *cif;
	unsigned int device_id;
	int err;

	if (FUNC4(!chip))
		return -EINVAL;

	cif = chip->cif;
	if (!cif) {
		if ((cif = FUNC2(sizeof(struct cmdif), GFP_KERNEL)) == NULL)
			return -ENOMEM;
		cif->hwport = (struct riptideport *)chip->port;
		FUNC6(&cif->lock);
		chip->cif = cif;
	}
	cif->is_reset = 0;
	if ((err = FUNC3(cif, chip)) != 0)
		return err;
	device_id = chip->device_id;
	switch (device_id) {
	case 0x4310:
	case 0x4320:
	case 0x4330:
		FUNC5("Modem enable?\n");
		FUNC0(cif);
		break;
	}
	FUNC5("Enabling MPU IRQs\n");
	if (chip->rmidi)
		FUNC1(cif->hwport);
	return err;
}
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
struct snd_cs46xx {TYPE_3__* ba1; TYPE_1__* pci; } ;
struct firmware {int size; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {TYPE_2__* memory; } ;
struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BA1_DWORD_SIZE ; 
 int BA1_MEMORY_COUNT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct firmware const*) ; 
 int FUNC2 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct snd_cs46xx *chip)
{
	const struct firmware *fw;
	int i, size, err;

	err = FUNC2(&fw, "cs46xx/ba1", &chip->pci->dev);
	if (err < 0)
		return err;
	if (fw->size != sizeof(*chip->ba1)) {
		err = -EINVAL;
		goto error;
	}

	chip->ba1 = FUNC3(sizeof(*chip->ba1));
	if (!chip->ba1) {
		err = -ENOMEM;
		goto error;
	}

	FUNC0(chip->ba1, fw->data, sizeof(*chip->ba1));

	/* sanity check */
	size = 0;
	for (i = 0; i < BA1_MEMORY_COUNT; i++)
		size += chip->ba1->memory[i].size;
	if (size > BA1_DWORD_SIZE * 4)
		err = -EINVAL;

 error:
	FUNC1(fw);
	return err;
}
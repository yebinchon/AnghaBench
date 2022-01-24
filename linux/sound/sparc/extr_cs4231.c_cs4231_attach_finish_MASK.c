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
struct snd_cs4231 {TYPE_1__* op; } ;
struct snd_card {struct snd_cs4231* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct snd_cs4231*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_card*) ; 
 int FUNC2 (struct snd_card*) ; 
 int FUNC3 (struct snd_card*) ; 
 int FUNC4 (struct snd_card*) ; 
 int FUNC5 (struct snd_card*) ; 

__attribute__((used)) static int FUNC6(struct snd_card *card)
{
	struct snd_cs4231 *chip = card->private_data;
	int err;

	err = FUNC4(card);
	if (err < 0)
		goto out_err;

	err = FUNC3(card);
	if (err < 0)
		goto out_err;

	err = FUNC5(card);
	if (err < 0)
		goto out_err;

	err = FUNC2(card);
	if (err < 0)
		goto out_err;

	FUNC0(&chip->op->dev, chip);

	dev++;
	return 0;

out_err:
	FUNC1(card);
	return err;
}
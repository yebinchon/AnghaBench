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
struct snd_riptide {scalar_t__ irq; int /*<<< orphan*/  res_port; int /*<<< orphan*/  fw_entry; struct snd_riptide* cif; int /*<<< orphan*/  hwport; } ;
struct cmdif {scalar_t__ irq; int /*<<< orphan*/  res_port; int /*<<< orphan*/  fw_entry; struct cmdif* cif; int /*<<< orphan*/  hwport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct snd_riptide*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_riptide*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct snd_riptide *chip)
{
	struct cmdif *cif;

	if (!chip)
		return 0;

	if ((cif = chip->cif)) {
		FUNC0(cif->hwport);
		FUNC6(100);
		FUNC1(cif->hwport);
		FUNC3(chip->cif);
	}
	if (chip->irq >= 0)
		FUNC2(chip->irq, chip);
	FUNC5(chip->fw_entry);
	FUNC4(chip->res_port);
	FUNC3(chip);
	return 0;
}
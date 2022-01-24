#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nau8825 {int xtalk_baktab_initialized; int /*<<< orphan*/  regmap; } ;
struct TYPE_3__ {int /*<<< orphan*/  def; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* nau8825_xtalk_baktab ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct nau8825 *nau8825)
{
	int i;

	if (nau8825->xtalk_baktab_initialized)
		return;

	/* Backup some register values to backup table */
	for (i = 0; i < FUNC0(nau8825_xtalk_baktab); i++)
		FUNC1(nau8825->regmap, nau8825_xtalk_baktab[i].reg,
				&nau8825_xtalk_baktab[i].def);

	nau8825->xtalk_baktab_initialized = true;
}
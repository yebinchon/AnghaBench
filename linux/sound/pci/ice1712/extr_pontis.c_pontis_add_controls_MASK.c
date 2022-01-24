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
struct snd_ice1712 {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*) ; 
 int /*<<< orphan*/ * pontis_controls ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct snd_ice1712*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*) ; 

__attribute__((used)) static int FUNC5(struct snd_ice1712 *ice)
{
	unsigned int i;
	int err;

	for (i = 0; i < FUNC0(pontis_controls); i++) {
		err = FUNC2(ice->card, FUNC3(&pontis_controls[i], ice));
		if (err < 0)
			return err;
	}

	FUNC4(ice);
	FUNC1(ice);

	return 0;
}
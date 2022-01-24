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
struct snd_ice1712 {struct psc724_spec* spec; } ;
struct psc724_spec {int /*<<< orphan*/  wm8766; int /*<<< orphan*/  wm8776; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct snd_ice1712 *ice, unsigned int rate)
{
	struct psc724_spec *spec = ice->spec;
	/* restore codec volume settings after rate change (PMCLK stop) */
	FUNC1(&spec->wm8776);
	FUNC0(&spec->wm8766);
}
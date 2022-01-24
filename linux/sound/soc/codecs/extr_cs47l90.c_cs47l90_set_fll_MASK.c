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
struct snd_soc_component {int dummy; } ;
struct cs47l90 {int /*<<< orphan*/ * fll; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MADERA_FLL1_REFCLK 132 
#define  MADERA_FLL1_SYNCCLK 131 
#define  MADERA_FLL2_REFCLK 130 
#define  MADERA_FLL2_SYNCCLK 129 
#define  MADERA_FLLAO_REFCLK 128 
 int FUNC0 (int /*<<< orphan*/ *,int,unsigned int,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,unsigned int,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,unsigned int,unsigned int) ; 
 struct cs47l90* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component, int fll_id,
			   int source, unsigned int fref, unsigned int fout)
{
	struct cs47l90 *cs47l90 = FUNC3(component);

	switch (fll_id) {
	case MADERA_FLL1_REFCLK:
		return FUNC1(&cs47l90->fll[0], source, fref,
					     fout);
	case MADERA_FLL2_REFCLK:
		return FUNC1(&cs47l90->fll[1], source, fref,
					     fout);
	case MADERA_FLLAO_REFCLK:
		return FUNC0(&cs47l90->fll[2], source, fref,
						fout);
	case MADERA_FLL1_SYNCCLK:
		return FUNC2(&cs47l90->fll[0], source, fref,
					      fout);
	case MADERA_FLL2_SYNCCLK:
		return FUNC2(&cs47l90->fll[1], source, fref,
					      fout);
	default:
		return -EINVAL;
	}
}
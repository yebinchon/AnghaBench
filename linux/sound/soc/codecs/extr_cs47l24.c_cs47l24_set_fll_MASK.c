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
struct cs47l24_priv {int /*<<< orphan*/ * fll; } ;

/* Variables and functions */
#define  CS47L24_FLL1 131 
#define  CS47L24_FLL1_REFCLK 130 
#define  CS47L24_FLL2 129 
#define  CS47L24_FLL2_REFCLK 128 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int,unsigned int,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,unsigned int,unsigned int) ; 
 struct cs47l24_priv* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component, int fll_id,
			   int source, unsigned int Fref, unsigned int Fout)
{
	struct cs47l24_priv *cs47l24 = FUNC2(component);

	switch (fll_id) {
	case CS47L24_FLL1:
		return FUNC0(&cs47l24->fll[0], source, Fref, Fout);
	case CS47L24_FLL2:
		return FUNC0(&cs47l24->fll[1], source, Fref, Fout);
	case CS47L24_FLL1_REFCLK:
		return FUNC1(&cs47l24->fll[0], source, Fref,
					      Fout);
	case CS47L24_FLL2_REFCLK:
		return FUNC1(&cs47l24->fll[1], source, Fref,
					      Fout);
	default:
		return -EINVAL;
	}
}
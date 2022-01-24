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
struct wm8997_priv {int /*<<< orphan*/ * fll; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  WM8997_FLL1 131 
#define  WM8997_FLL1_REFCLK 130 
#define  WM8997_FLL2 129 
#define  WM8997_FLL2_REFCLK 128 
 int FUNC0 (int /*<<< orphan*/ *,int,unsigned int,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,unsigned int,unsigned int) ; 
 struct wm8997_priv* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component, int fll_id,
			  int source, unsigned int Fref, unsigned int Fout)
{
	struct wm8997_priv *wm8997 = FUNC2(component);

	switch (fll_id) {
	case WM8997_FLL1:
		return FUNC0(&wm8997->fll[0], source, Fref, Fout);
	case WM8997_FLL2:
		return FUNC0(&wm8997->fll[1], source, Fref, Fout);
	case WM8997_FLL1_REFCLK:
		return FUNC1(&wm8997->fll[0], source, Fref,
					      Fout);
	case WM8997_FLL2_REFCLK:
		return FUNC1(&wm8997->fll[1], source, Fref,
					      Fout);
	default:
		return -EINVAL;
	}
}
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
struct snd_soc_dapm_widget {struct pinctrl* pinctrl; struct snd_soc_dapm_pinctrl_priv* priv; } ;
struct snd_soc_dapm_pinctrl_priv {int /*<<< orphan*/  sleep_state; int /*<<< orphan*/  active_state; } ;
struct snd_kcontrol {int dummy; } ;
struct pinctrl_state {int dummy; } ;
struct pinctrl {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct pinctrl_state*) ; 
 int FUNC1 (struct pinctrl_state*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct pinctrl_state* FUNC3 (struct pinctrl*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pinctrl*,struct pinctrl_state*) ; 

int FUNC5(struct snd_soc_dapm_widget *w,
		       struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_dapm_pinctrl_priv *priv = w->priv;
	struct pinctrl *p = w->pinctrl;
	struct pinctrl_state *s;

	if (!p || !priv)
		return -EIO;

	if (FUNC2(event))
		s = FUNC3(p, priv->active_state);
	else
		s = FUNC3(p, priv->sleep_state);

	if (FUNC0(s))
		return FUNC1(s);

	return FUNC4(p, s);
}
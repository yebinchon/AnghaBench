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
struct snd_soc_dapm_widget {scalar_t__ sname; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_dapm_widget*) ; 
 struct snd_soc_dapm_widget* FUNC1 (struct snd_soc_dapm_widget const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct snd_soc_dapm_widget *FUNC3(
	const struct snd_soc_dapm_widget *_widget)
{
	struct snd_soc_dapm_widget *w;

	w = FUNC1(_widget, sizeof(*_widget), GFP_KERNEL);
	if (!w)
		return NULL;

	/*
	 * w->name is duplicated in caller, but w->sname isn't.
	 * Duplicate it here if defined
	 */
	if (_widget->sname) {
		w->sname = FUNC2(_widget->sname, GFP_KERNEL);
		if (!w->sname) {
			FUNC0(w);
			return NULL;
		}
	}
	return w;
}
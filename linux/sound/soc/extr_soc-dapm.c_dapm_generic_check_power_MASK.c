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
struct snd_soc_dapm_widget {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_soc_dapm_widget*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_soc_dapm_widget*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_soc_dapm_widget*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  power_checks ; 

__attribute__((used)) static int FUNC3(struct snd_soc_dapm_widget *w)
{
	int in, out;

	FUNC0(w, power_checks);

	in = FUNC1(w, NULL, NULL);
	out = FUNC2(w, NULL, NULL);
	return out != 0 && in != 0;
}
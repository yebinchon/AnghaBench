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
typedef  int u8 ;
struct snd_soc_dapm_widget {int shift; int /*<<< orphan*/  reg; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct max98088_priv {int ina_state; int inb_state; } ;

/* Variables and functions */
 int EINVAL ; 
#define  LINE_INA 131 
#define  LINE_INB 130 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_POST_PMU 128 
 scalar_t__ FUNC0 (int) ; 
 struct max98088_priv* FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
                            int event, int line, u8 channel)
{
       struct snd_soc_component *component = FUNC3(w->dapm);
       struct max98088_priv *max98088 = FUNC1(component);
       u8 *state;

	if (FUNC0(!(channel == 1 || channel == 2)))
		return -EINVAL;

       switch (line) {
       case LINE_INA:
               state = &max98088->ina_state;
               break;
       case LINE_INB:
               state = &max98088->inb_state;
               break;
       default:
               return -EINVAL;
       }

       switch (event) {
       case SND_SOC_DAPM_POST_PMU:
               *state |= channel;
               FUNC2(component, w->reg,
                       (1 << w->shift), (1 << w->shift));
               break;
       case SND_SOC_DAPM_POST_PMD:
               *state &= ~channel;
               if (*state == 0) {
                       FUNC2(component, w->reg,
                               (1 << w->shift), 0);
               }
               break;
       default:
               return -EINVAL;
       }

       return 0;
}
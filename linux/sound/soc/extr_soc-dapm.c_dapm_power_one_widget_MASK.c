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
struct snd_soc_dapm_widget {int id; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_soc_dapm_widget*,struct list_head*,int) ; 
 int FUNC1 (struct snd_soc_dapm_widget*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dapm_widget*,int,struct list_head*,struct list_head*) ; 
#define  snd_soc_dapm_post 129 
#define  snd_soc_dapm_pre 128 

__attribute__((used)) static void FUNC3(struct snd_soc_dapm_widget *w,
				  struct list_head *up_list,
				  struct list_head *down_list)
{
	int power;

	switch (w->id) {
	case snd_soc_dapm_pre:
		FUNC0(w, down_list, false);
		break;
	case snd_soc_dapm_post:
		FUNC0(w, up_list, true);
		break;

	default:
		power = FUNC1(w);

		FUNC2(w, power, up_list, down_list);
		break;
	}
}
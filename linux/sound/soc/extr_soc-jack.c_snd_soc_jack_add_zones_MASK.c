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
struct snd_soc_jack_zone {int /*<<< orphan*/  list; } ;
struct snd_soc_jack {int /*<<< orphan*/  jack_zones; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(struct snd_soc_jack *jack, int count,
			  struct snd_soc_jack_zone *zones)
{
	int i;

	for (i = 0; i < count; i++) {
		FUNC0(&zones[i].list);
		FUNC1(&(zones[i].list), &jack->jack_zones);
	}
	return 0;
}
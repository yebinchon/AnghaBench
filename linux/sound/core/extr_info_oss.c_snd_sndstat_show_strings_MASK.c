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
struct snd_info_buffer {int dummy; } ;

/* Variables and functions */
 int SNDRV_CARDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,char*,...) ; 
 char*** snd_sndstat_strings ; 
 int /*<<< orphan*/  strings ; 

__attribute__((used)) static int FUNC3(struct snd_info_buffer *buf, char *id, int dev)
{
	int idx, ok = -1;
	char *str;

	FUNC2(buf, "\n%s:", id);
	FUNC0(&strings);
	for (idx = 0; idx < SNDRV_CARDS; idx++) {
		str = snd_sndstat_strings[idx][dev];
		if (str) {
			if (ok < 0) {
				FUNC2(buf, "\n");
				ok++;
			}
			FUNC2(buf, "%i: %s\n", idx, str);
		}
	}
	FUNC1(&strings);
	if (ok < 0)
		FUNC2(buf, " NOT ENABLED IN CONFIG\n");
	return ok;
}
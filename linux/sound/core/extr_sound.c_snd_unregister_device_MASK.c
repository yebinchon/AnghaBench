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
struct snd_minor {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct snd_minor**) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_minor*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct snd_minor** snd_minors ; 
 int /*<<< orphan*/  sound_mutex ; 

int FUNC5(struct device *dev)
{
	int minor;
	struct snd_minor *preg;

	FUNC3(&sound_mutex);
	for (minor = 0; minor < FUNC0(snd_minors); ++minor) {
		preg = snd_minors[minor];
		if (preg && preg->dev == dev) {
			snd_minors[minor] = NULL;
			FUNC1(dev);
			FUNC2(preg);
			break;
		}
	}
	FUNC4(&sound_mutex);
	if (minor >= FUNC0(snd_minors))
		return -ENOENT;
	return 0;
}
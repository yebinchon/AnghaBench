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
struct hda_codec {int /*<<< orphan*/  core; struct hda_bus* bus; } ;
struct hda_bus {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct hda_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_bus*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct hda_codec *codec)
{
	struct hda_bus *bus = codec->bus;

	if (FUNC0(bus) < 0)
		return -EBUSY;

	/* OK, let it free */
	FUNC2(&codec->core);

	/* allow device access again */
	FUNC1(bus);
	return 0;
}
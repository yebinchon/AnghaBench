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
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,char*) ; 
 scalar_t__ FUNC2 (struct hda_codec*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static bool FUNC6(struct hda_codec *codec)
{
	unsigned long timeout = jiffies + FUNC3(2000);

	do {
		if (FUNC2(codec)) {
			FUNC1(codec, "ca0132 DSP downloaded and running\n");
			return true;
		}
		FUNC4(20);
	} while (FUNC5(jiffies, timeout));

	FUNC0(codec, "ca0132 failed to download DSP\n");
	return false;
}
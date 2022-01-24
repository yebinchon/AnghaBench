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
struct lola {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int LOLA_PAR_AUDIO_WIDGET_CAP ; 
 int /*<<< orphan*/  LOLA_VERB_GET_MAX_LEVEL ; 
 int /*<<< orphan*/  FUNC4 (struct lola*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct lola*,int,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_info_buffer*,char*,unsigned int,...) ; 

__attribute__((used)) static void FUNC7(struct snd_info_buffer *buffer,
			     struct lola *chip, int nid, unsigned int ampcap,
			     const char *name)
{
	unsigned int val;

	FUNC5(chip, nid, LOLA_PAR_AUDIO_WIDGET_CAP, &val);
	FUNC6(buffer, "Node 0x%02x %s wcaps 0x%x\n", nid, name, val);
	if (val == 0x00400200)
		return;
	FUNC5(chip, nid, ampcap, &val);
	FUNC6(buffer, "  Amp-Caps: 0x%x\n", val);
	FUNC6(buffer, "    mute=%d, step-size=%d, steps=%d, ofs=%d\n",
		    FUNC0(val),
		    FUNC3(val),
		    FUNC1(val),
		    FUNC2(val));
	FUNC4(chip, nid, LOLA_VERB_GET_MAX_LEVEL, 0, 0, &val, NULL);
	FUNC6(buffer, "  Max-level: 0x%x\n", val);
}
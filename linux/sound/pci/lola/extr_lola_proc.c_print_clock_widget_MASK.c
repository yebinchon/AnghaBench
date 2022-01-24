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
 unsigned char LOLA_CLOCK_TYPE_INTERNAL ; 
 unsigned char LOLA_CLOCK_TYPE_VIDEO ; 
 int /*<<< orphan*/  LOLA_PAR_AUDIO_WIDGET_CAP ; 
 int /*<<< orphan*/  LOLA_VERB_GET_CLOCK_LIST ; 
 int /*<<< orphan*/  FUNC0 (struct lola*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct lola*,int,int /*<<< orphan*/ ,unsigned int*) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_info_buffer*,char*,int,unsigned char,...) ; 

__attribute__((used)) static void FUNC4(struct snd_info_buffer *buffer,
			       struct lola *chip, int nid)
{
	int i, j, num_clocks;
	unsigned int val;

	FUNC1(chip, nid, LOLA_PAR_AUDIO_WIDGET_CAP, &val);
	FUNC3(buffer, "Node 0x%02x [Clock] wcaps 0x%x\n", nid, val);
	num_clocks = val & 0xff;
	for (i = 0; i < num_clocks; i += 4) {
		unsigned int res_ex;
		unsigned short items[4];
		const char *name;

		FUNC0(chip, nid, LOLA_VERB_GET_CLOCK_LIST,
				i, 0, &val, &res_ex);
		items[0] = val & 0xfff;
		items[1] = (val >> 16) & 0xfff;
		items[2] = res_ex & 0xfff;
		items[3] = (res_ex >> 16) & 0xfff;
		for (j = 0; j < 4; j++) {
			unsigned char type = items[j] >> 8;
			unsigned int freq = items[j] & 0xff;
			if (i + j >= num_clocks)
				break;
			if (type == LOLA_CLOCK_TYPE_INTERNAL) {
				name = "Internal";
				freq = FUNC2(freq);
			} else if (type == LOLA_CLOCK_TYPE_VIDEO) {
				name = "Video";
				freq = FUNC2(freq);
			} else {
				name = "Other";
			}
			FUNC3(buffer, "  Clock %d: Type %d:%s, freq=%d\n",
				    i + j, type, name, freq);
		}
	}
}
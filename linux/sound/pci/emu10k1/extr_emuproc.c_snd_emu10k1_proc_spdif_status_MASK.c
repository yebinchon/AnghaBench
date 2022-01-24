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
struct snd_emu10k1 {int dummy; } ;

/* Variables and functions */
 unsigned int SPCS_CATEGORYCODEMASK ; 
 unsigned int SPCS_CHANNELNUMMASK ; 
 unsigned int SPCS_CLKACCYMASK ; 
 unsigned int SPCS_COPYRIGHT ; 
 unsigned int SPCS_EMPHASISMASK ; 
 unsigned int SPCS_GENERATIONSTATUS ; 
 unsigned int SPCS_MODEMASK ; 
 unsigned int SPCS_NOTAUDIODATA ; 
 unsigned int SPCS_PROFESSIONAL ; 
 unsigned int SPCS_SAMPLERATEMASK ; 
 unsigned int SPCS_SOURCENUMMASK ; 
 unsigned int SRCS_RATELOCKED ; 
 unsigned int SRCS_SPDIFLOCKED ; 
 unsigned int SRCS_SPDIFVALID ; 
 unsigned int FUNC0 (struct snd_emu10k1*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct snd_emu10k1 * emu,
					  struct snd_info_buffer *buffer,
					  char *title,
					  int status_reg,
					  int rate_reg)
{
	static char *clkaccy[4] = { "1000ppm", "50ppm", "variable", "unknown" };
	static int samplerate[16] = { 44100, 1, 48000, 32000, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 };
	static char *channel[16] = { "unspec", "left", "right", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15" };
	static char *emphasis[8] = { "none", "50/15 usec 2 channel", "2", "3", "4", "5", "6", "7" };
	unsigned int status, rate = 0;
	
	status = FUNC0(emu, status_reg, 0);

	FUNC1(buffer, "\n%s\n", title);

	if (status != 0xffffffff) {
		FUNC1(buffer, "Professional Mode     : %s\n", (status & SPCS_PROFESSIONAL) ? "yes" : "no");
		FUNC1(buffer, "Not Audio Data        : %s\n", (status & SPCS_NOTAUDIODATA) ? "yes" : "no");
		FUNC1(buffer, "Copyright             : %s\n", (status & SPCS_COPYRIGHT) ? "yes" : "no");
		FUNC1(buffer, "Emphasis              : %s\n", emphasis[(status & SPCS_EMPHASISMASK) >> 3]);
		FUNC1(buffer, "Mode                  : %i\n", (status & SPCS_MODEMASK) >> 6);
		FUNC1(buffer, "Category Code         : 0x%x\n", (status & SPCS_CATEGORYCODEMASK) >> 8);
		FUNC1(buffer, "Generation Status     : %s\n", status & SPCS_GENERATIONSTATUS ? "original" : "copy");
		FUNC1(buffer, "Source Mask           : %i\n", (status & SPCS_SOURCENUMMASK) >> 16);
		FUNC1(buffer, "Channel Number        : %s\n", channel[(status & SPCS_CHANNELNUMMASK) >> 20]);
		FUNC1(buffer, "Sample Rate           : %iHz\n", samplerate[(status & SPCS_SAMPLERATEMASK) >> 24]);
		FUNC1(buffer, "Clock Accuracy        : %s\n", clkaccy[(status & SPCS_CLKACCYMASK) >> 28]);

		if (rate_reg > 0) {
			rate = FUNC0(emu, rate_reg, 0);
			FUNC1(buffer, "S/PDIF Valid          : %s\n", rate & SRCS_SPDIFVALID ? "on" : "off");
			FUNC1(buffer, "S/PDIF Locked         : %s\n", rate & SRCS_SPDIFLOCKED ? "on" : "off");
			FUNC1(buffer, "Rate Locked           : %s\n", rate & SRCS_RATELOCKED ? "on" : "off");
			/* From ((Rate * 48000 ) / 262144); */
			FUNC1(buffer, "Estimated Sample Rate : %d\n", ((rate & 0xFFFFF ) * 375) >> 11); 
		}
	} else {
		FUNC1(buffer, "No signal detected.\n");
	}

}
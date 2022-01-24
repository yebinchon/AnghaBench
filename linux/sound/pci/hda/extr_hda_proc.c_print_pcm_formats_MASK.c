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
 unsigned int AC_SUPFMT_AC3 ; 
 unsigned int AC_SUPFMT_FLOAT32 ; 
 unsigned int AC_SUPFMT_PCM ; 
 int /*<<< orphan*/  FUNC0 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct snd_info_buffer *buffer,
			      unsigned int streams)
{
	FUNC0(buffer, "    formats [0x%x]:", streams & 0xf);
	if (streams & AC_SUPFMT_PCM)
		FUNC0(buffer, " PCM");
	if (streams & AC_SUPFMT_FLOAT32)
		FUNC0(buffer, " FLOAT");
	if (streams & AC_SUPFMT_AC3)
		FUNC0(buffer, " AC3");
	FUNC0(buffer, "\n");
}
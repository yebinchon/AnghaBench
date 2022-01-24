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
typedef  int u32 ;
struct snd_info_buffer {int dummy; } ;
struct snd_ff {int /*<<< orphan*/  unit; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  enum snd_ff_clock_src { ____Placeholder_snd_ff_clock_src } snd_ff_clock_src ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FORMER_REG_CLOCK_CONFIG ; 
 int /*<<< orphan*/  TCODE_READ_BLOCK_REQUEST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,unsigned int*,int*) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC5(struct snd_ff *ff, struct snd_info_buffer *buffer)
{
	__le32 reg;
	u32 data;
	unsigned int rate;
	enum snd_ff_clock_src src;
	const char *label;
	int err;

	err = FUNC3(ff->unit, TCODE_READ_BLOCK_REQUEST,
				 FORMER_REG_CLOCK_CONFIG, &reg, sizeof(reg), 0);
	if (err < 0)
		return;
	data = FUNC0(reg);

	FUNC4(buffer, "Output S/PDIF format: %s (Emphasis: %s)\n",
		    (data & 0x00000020) ? "Professional" : "Consumer",
		    (data & 0x00000040) ? "on" : "off");

	FUNC4(buffer, "Optical output interface format: %s\n",
		    (data & 0x00000100) ? "S/PDIF" : "ADAT");

	FUNC4(buffer, "Word output single speed: %s\n",
		    (data & 0x00002000) ? "on" : "off");

	FUNC4(buffer, "S/PDIF input interface: %s\n",
		    (data & 0x00000200) ? "Optical" : "Coaxial");

	err = FUNC1(data, &rate, &src);
	if (err < 0)
		return;
	label = FUNC2(src);
	if (!label)
		return;

	FUNC4(buffer, "Clock configuration: %d %s\n", rate, label);
}
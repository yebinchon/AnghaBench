#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_info_entry {struct snd_ice1712* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_4__ {unsigned int subvendor; unsigned int size; unsigned int version; unsigned int* data; unsigned int gpiomask; unsigned int gpiostate; unsigned int gpiodir; } ;
struct snd_ice1712 {TYPE_2__ eeprom; TYPE_1__* card; } ;
struct TYPE_3__ {unsigned int longname; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE1712_IREG_GPIO_DIRECTION ; 
 int /*<<< orphan*/  ICE1712_IREG_GPIO_WRITE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICE_EEP1_AC97_MAIN_LO ; 
 int /*<<< orphan*/  ICE_EEP1_AC97_PCM_LO ; 
 size_t ICE_EEP1_AC97_RECSRC ; 
 int /*<<< orphan*/  ICE_EEP1_AC97_REC_LO ; 
 size_t ICE_EEP1_ACLINK ; 
 unsigned int ICE_EEP1_ADC_ID ; 
 size_t ICE_EEP1_CODEC ; 
 unsigned int ICE_EEP1_DAC_ID ; 
 size_t ICE_EEP1_I2SID ; 
 size_t ICE_EEP1_SPDIF ; 
 int /*<<< orphan*/  RATE ; 
 int /*<<< orphan*/  ROUTE_CAPTURE ; 
 int /*<<< orphan*/  ROUTE_PSDOUT03 ; 
 int /*<<< orphan*/  ROUTE_SPDOUT ; 
 unsigned int FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct snd_ice1712*) ; 
 scalar_t__ FUNC6 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC8(struct snd_info_entry *entry,
				  struct snd_info_buffer *buffer)
{
	struct snd_ice1712 *ice = entry->private_data;
	unsigned int idx;

	FUNC7(buffer, "%s\n\n", ice->card->longname);
	FUNC7(buffer, "EEPROM:\n");

	FUNC7(buffer, "  Subvendor        : 0x%x\n", ice->eeprom.subvendor);
	FUNC7(buffer, "  Size             : %i bytes\n", ice->eeprom.size);
	FUNC7(buffer, "  Version          : %i\n", ice->eeprom.version);
	FUNC7(buffer, "  Codec            : 0x%x\n", ice->eeprom.data[ICE_EEP1_CODEC]);
	FUNC7(buffer, "  ACLink           : 0x%x\n", ice->eeprom.data[ICE_EEP1_ACLINK]);
	FUNC7(buffer, "  I2S ID           : 0x%x\n", ice->eeprom.data[ICE_EEP1_I2SID]);
	FUNC7(buffer, "  S/PDIF           : 0x%x\n", ice->eeprom.data[ICE_EEP1_SPDIF]);
	FUNC7(buffer, "  GPIO mask        : 0x%x\n", ice->eeprom.gpiomask);
	FUNC7(buffer, "  GPIO state       : 0x%x\n", ice->eeprom.gpiostate);
	FUNC7(buffer, "  GPIO direction   : 0x%x\n", ice->eeprom.gpiodir);
	FUNC7(buffer, "  AC'97 main       : 0x%x\n", FUNC1(ice, ICE_EEP1_AC97_MAIN_LO));
	FUNC7(buffer, "  AC'97 pcm        : 0x%x\n", FUNC1(ice, ICE_EEP1_AC97_PCM_LO));
	FUNC7(buffer, "  AC'97 record     : 0x%x\n", FUNC1(ice, ICE_EEP1_AC97_REC_LO));
	FUNC7(buffer, "  AC'97 record src : 0x%x\n", ice->eeprom.data[ICE_EEP1_AC97_RECSRC]);
	for (idx = 0; idx < 4; idx++)
		FUNC7(buffer, "  DAC ID #%i        : 0x%x\n", idx, ice->eeprom.data[ICE_EEP1_DAC_ID + idx]);
	for (idx = 0; idx < 4; idx++)
		FUNC7(buffer, "  ADC ID #%i        : 0x%x\n", idx, ice->eeprom.data[ICE_EEP1_ADC_ID + idx]);
	for (idx = 0x1c; idx < ice->eeprom.size; idx++)
		FUNC7(buffer, "  Extra #%02i        : 0x%x\n", idx, ice->eeprom.data[idx]);

	FUNC7(buffer, "\nRegisters:\n");
	FUNC7(buffer, "  PSDOUT03         : 0x%04x\n", (unsigned)FUNC4(FUNC0(ice, ROUTE_PSDOUT03)));
	FUNC7(buffer, "  CAPTURE          : 0x%08x\n", FUNC3(FUNC0(ice, ROUTE_CAPTURE)));
	FUNC7(buffer, "  SPDOUT           : 0x%04x\n", (unsigned)FUNC4(FUNC0(ice, ROUTE_SPDOUT)));
	FUNC7(buffer, "  RATE             : 0x%02x\n", (unsigned)FUNC2(FUNC0(ice, RATE)));
	FUNC7(buffer, "  GPIO_DATA        : 0x%02x\n", (unsigned)FUNC5(ice));
	FUNC7(buffer, "  GPIO_WRITE_MASK  : 0x%02x\n", (unsigned)FUNC6(ice, ICE1712_IREG_GPIO_WRITE_MASK));
	FUNC7(buffer, "  GPIO_DIRECTION   : 0x%02x\n", (unsigned)FUNC6(ice, ICE1712_IREG_GPIO_DIRECTION));
}
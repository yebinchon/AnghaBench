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
struct TYPE_4__ {unsigned int size; int /*<<< orphan*/ * data; int /*<<< orphan*/  gpiostate; int /*<<< orphan*/  gpiomask; int /*<<< orphan*/  gpiodir; int /*<<< orphan*/  version; int /*<<< orphan*/  subvendor; } ;
struct snd_ice1712 {scalar_t__ profi_port; scalar_t__ port; TYPE_2__ eeprom; TYPE_1__* card; } ;
struct TYPE_3__ {int /*<<< orphan*/  longname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 size_t ICE_EEP2_ACLINK ; 
 size_t ICE_EEP2_I2S ; 
 size_t ICE_EEP2_SPDIF ; 
 size_t ICE_EEP2_SYSCONF ; 
 int /*<<< orphan*/  ROUTE_PLAYBACK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC4(struct snd_info_entry *entry,
				 struct snd_info_buffer *buffer)
{
	struct snd_ice1712 *ice = entry->private_data;
	unsigned int idx;

	FUNC3(buffer, "%s\n\n", ice->card->longname);
	FUNC3(buffer, "EEPROM:\n");

	FUNC3(buffer, "  Subvendor        : 0x%x\n", ice->eeprom.subvendor);
	FUNC3(buffer, "  Size             : %i bytes\n", ice->eeprom.size);
	FUNC3(buffer, "  Version          : %i\n", ice->eeprom.version);
	FUNC3(buffer, "  System Config    : 0x%x\n",
		    ice->eeprom.data[ICE_EEP2_SYSCONF]);
	FUNC3(buffer, "  ACLink           : 0x%x\n",
		    ice->eeprom.data[ICE_EEP2_ACLINK]);
	FUNC3(buffer, "  I2S              : 0x%x\n",
		    ice->eeprom.data[ICE_EEP2_I2S]);
	FUNC3(buffer, "  S/PDIF           : 0x%x\n",
		    ice->eeprom.data[ICE_EEP2_SPDIF]);
	FUNC3(buffer, "  GPIO direction   : 0x%x\n",
		    ice->eeprom.gpiodir);
	FUNC3(buffer, "  GPIO mask        : 0x%x\n",
		    ice->eeprom.gpiomask);
	FUNC3(buffer, "  GPIO state       : 0x%x\n",
		    ice->eeprom.gpiostate);
	for (idx = 0x12; idx < ice->eeprom.size; idx++)
		FUNC3(buffer, "  Extra #%02i        : 0x%x\n",
			    idx, ice->eeprom.data[idx]);

	FUNC3(buffer, "\nRegisters:\n");

	FUNC3(buffer, "  PSDOUT03 : 0x%08x\n",
		    (unsigned)FUNC2(FUNC0(ice, ROUTE_PLAYBACK)));
	for (idx = 0x0; idx < 0x20 ; idx++)
		FUNC3(buffer, "  CCS%02x    : 0x%02x\n",
			    idx, FUNC1(ice->port+idx));
	for (idx = 0x0; idx < 0x30 ; idx++)
		FUNC3(buffer, "  MT%02x     : 0x%02x\n",
			    idx, FUNC1(ice->profi_port+idx));
}
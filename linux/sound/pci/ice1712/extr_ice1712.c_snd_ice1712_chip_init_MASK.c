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
struct TYPE_4__ {scalar_t__ subvendor; int* data; int gpiomask; int gpiodir; int gpiostate; } ;
struct TYPE_3__ {int write_mask; int direction; } ;
struct snd_ice1712 {TYPE_2__ eeprom; TYPE_1__ gpio; int /*<<< orphan*/  pci; int /*<<< orphan*/  dxr_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_CMD ; 
 int /*<<< orphan*/  CONTROL ; 
 int ICE1712_AC97_WARM ; 
 int ICE1712_CFG_2xMPU401 ; 
 int ICE1712_CFG_NO_CON_AC97 ; 
 int /*<<< orphan*/  ICE1712_IREG_CONSUMER_POWERDOWN ; 
 int /*<<< orphan*/  ICE1712_IREG_GPIO_DATA ; 
 int /*<<< orphan*/  ICE1712_IREG_GPIO_DIRECTION ; 
 int /*<<< orphan*/  ICE1712_IREG_GPIO_WRITE_MASK ; 
 int /*<<< orphan*/  ICE1712_IREG_PRO_POWERDOWN ; 
 int ICE1712_IRQ_CONCAP ; 
 int ICE1712_IRQ_CONPBK ; 
 int ICE1712_IRQ_MPU2 ; 
 int ICE1712_IRQ_PBKDS ; 
 int ICE1712_NATIVE ; 
 int ICE1712_RESET ; 
 int ICE1712_STDSP24_CLOCK_BIT ; 
 scalar_t__ ICE1712_SUBDEVICE_DMX6FIRE ; 
 scalar_t__ ICE1712_SUBDEVICE_STDSP24 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 size_t ICE_EEP1_ACLINK ; 
 size_t ICE_EEP1_CODEC ; 
 size_t ICE_EEP1_I2SID ; 
 size_t ICE_EEP1_SPDIF ; 
 int /*<<< orphan*/  IRQ ; 
 int /*<<< orphan*/  IRQMASK ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ice1712*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct snd_ice1712 *ice)
{
	FUNC2(ICE1712_RESET | ICE1712_NATIVE, FUNC1(ice, CONTROL));
	FUNC6(200);
	FUNC2(ICE1712_NATIVE, FUNC1(ice, CONTROL));
	FUNC6(200);
	if (ice->eeprom.subvendor == ICE1712_SUBDEVICE_DMX6FIRE &&
	    !ice->dxr_enable)
		/*  Set eeprom value to limit active ADCs and DACs to 6;
		 *  Also disable AC97 as no hardware in standard 6fire card/box
		 *  Note: DXR extensions are not currently supported
		 */
		ice->eeprom.data[ICE_EEP1_CODEC] = 0x3a;
	FUNC3(ice->pci, 0x60, ice->eeprom.data[ICE_EEP1_CODEC]);
	FUNC3(ice->pci, 0x61, ice->eeprom.data[ICE_EEP1_ACLINK]);
	FUNC3(ice->pci, 0x62, ice->eeprom.data[ICE_EEP1_I2SID]);
	FUNC3(ice->pci, 0x63, ice->eeprom.data[ICE_EEP1_SPDIF]);
	if (ice->eeprom.subvendor != ICE1712_SUBDEVICE_STDSP24) {
		ice->gpio.write_mask = ice->eeprom.gpiomask;
		ice->gpio.direction = ice->eeprom.gpiodir;
		FUNC5(ice, ICE1712_IREG_GPIO_WRITE_MASK,
				  ice->eeprom.gpiomask);
		FUNC5(ice, ICE1712_IREG_GPIO_DIRECTION,
				  ice->eeprom.gpiodir);
		FUNC5(ice, ICE1712_IREG_GPIO_DATA,
				  ice->eeprom.gpiostate);
	} else {
		ice->gpio.write_mask = 0xc0;
		ice->gpio.direction = 0xff;
		FUNC5(ice, ICE1712_IREG_GPIO_WRITE_MASK, 0xc0);
		FUNC5(ice, ICE1712_IREG_GPIO_DIRECTION, 0xff);
		FUNC5(ice, ICE1712_IREG_GPIO_DATA,
				  ICE1712_STDSP24_CLOCK_BIT);
	}
	FUNC5(ice, ICE1712_IREG_PRO_POWERDOWN, 0);
	if (!(ice->eeprom.data[ICE_EEP1_CODEC] & ICE1712_CFG_NO_CON_AC97)) {
		FUNC2(ICE1712_AC97_WARM, FUNC1(ice, AC97_CMD));
		FUNC6(100);
		FUNC2(0, FUNC1(ice, AC97_CMD));
		FUNC6(200);
		FUNC5(ice, ICE1712_IREG_CONSUMER_POWERDOWN, 0);
	}
	FUNC4(ice, 48000, 1);
	/* unmask used interrupts */
	FUNC2(((ice->eeprom.data[ICE_EEP1_CODEC] & ICE1712_CFG_2xMPU401) == 0 ?
	      ICE1712_IRQ_MPU2 : 0) |
	     ((ice->eeprom.data[ICE_EEP1_CODEC] & ICE1712_CFG_NO_CON_AC97) ?
	      ICE1712_IRQ_PBKDS | ICE1712_IRQ_CONCAP | ICE1712_IRQ_CONPBK : 0),
	     FUNC1(ice, IRQMASK));
	FUNC2(0x00, FUNC0(ice, IRQ));

	return 0;
}
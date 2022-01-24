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
struct TYPE_4__ {int* data; int /*<<< orphan*/  gpiostate; int /*<<< orphan*/  gpiodir; int /*<<< orphan*/  gpiomask; } ;
struct TYPE_3__ {int /*<<< orphan*/  direction; int /*<<< orphan*/  write_mask; } ;
struct snd_ice1712 {TYPE_2__ eeprom; TYPE_1__ gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_CFG ; 
 int /*<<< orphan*/  DMA_INT_MASK ; 
 int /*<<< orphan*/  I2S_FEATURES ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 size_t ICE_EEP2_ACLINK ; 
 size_t ICE_EEP2_I2S ; 
 size_t ICE_EEP2_SPDIF ; 
 size_t ICE_EEP2_SYSCONF ; 
 int /*<<< orphan*/  IRQMASK ; 
 int /*<<< orphan*/  POWERDOWN ; 
 int /*<<< orphan*/  SPDIF_CFG ; 
 int /*<<< orphan*/  SYS_CFG ; 
 int VT1724_IRQ_MPU_RX ; 
 int VT1724_IRQ_MPU_TX ; 
 int VT1724_MULTI_FIFO_ERR ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_ice1712*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_ice1712 *ice)
{
	FUNC2(ice->eeprom.data[ICE_EEP2_SYSCONF], FUNC1(ice, SYS_CFG));
	FUNC2(ice->eeprom.data[ICE_EEP2_ACLINK], FUNC1(ice, AC97_CFG));
	FUNC2(ice->eeprom.data[ICE_EEP2_I2S], FUNC1(ice, I2S_FEATURES));
	FUNC2(ice->eeprom.data[ICE_EEP2_SPDIF], FUNC1(ice, SPDIF_CFG));

	ice->gpio.write_mask = ice->eeprom.gpiomask;
	ice->gpio.direction = ice->eeprom.gpiodir;
	FUNC5(ice, ice->eeprom.gpiomask);
	FUNC4(ice, ice->eeprom.gpiodir);
	FUNC3(ice, ice->eeprom.gpiostate);

	FUNC2(0, FUNC1(ice, POWERDOWN));

	/* MPU_RX and TX irq masks are cleared later dynamically */
	FUNC2(VT1724_IRQ_MPU_RX | VT1724_IRQ_MPU_TX , FUNC1(ice, IRQMASK));

	/* don't handle FIFO overrun/underruns (just yet),
	 * since they cause machine lockups
	 */
	FUNC2(VT1724_MULTI_FIFO_ERR, FUNC0(ice, DMA_INT_MASK));

	return 0;
}
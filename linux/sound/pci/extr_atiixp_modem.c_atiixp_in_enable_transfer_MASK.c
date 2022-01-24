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
struct atiixp_modem {int dummy; } ;

/* Variables and functions */
 unsigned int ATI_REG_CMD_MODEM_RECEIVE_EN ; 
 int /*<<< orphan*/  CMD ; 
 unsigned int FUNC0 (struct atiixp_modem*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atiixp_modem*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atiixp_modem*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct atiixp_modem *chip, int on)
{
	if (on) {
		unsigned int data = FUNC0(chip, CMD);
		if (! (data & ATI_REG_CMD_MODEM_RECEIVE_EN)) {
			data |= ATI_REG_CMD_MODEM_RECEIVE_EN;
			FUNC2(chip, CMD, data);
		}
	} else
		FUNC1(chip, CMD, ATI_REG_CMD_MODEM_RECEIVE_EN, 0);
}
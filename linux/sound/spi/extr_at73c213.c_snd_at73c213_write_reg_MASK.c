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
typedef  size_t u8 ;
struct spi_transfer {int len; size_t* tx_buf; int /*<<< orphan*/  rx_buf; int /*<<< orphan*/  cs_change; } ;
struct spi_message {int dummy; } ;
struct snd_at73c213 {size_t* spi_wbuffer; size_t* reg_image; int /*<<< orphan*/  spi; int /*<<< orphan*/  spi_rbuffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_message*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static int
FUNC3(struct snd_at73c213 *chip, u8 reg, u8 val)
{
	struct spi_message msg;
	struct spi_transfer msg_xfer = {
		.len		= 2,
		.cs_change	= 0,
	};
	int retval;

	FUNC1(&msg);

	chip->spi_wbuffer[0] = reg;
	chip->spi_wbuffer[1] = val;

	msg_xfer.tx_buf = chip->spi_wbuffer;
	msg_xfer.rx_buf = chip->spi_rbuffer;
	FUNC0(&msg_xfer, &msg);

	retval = FUNC2(chip->spi, &msg);

	if (!retval)
		chip->reg_image[reg] = val;

	return retval;
}
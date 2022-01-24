#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct oxygen {int uart_input_count; char* uart_input; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 

void FUNC2(struct oxygen *chip)
{
	if (chip->uart_input_count >= 2 &&
	    chip->uart_input[chip->uart_input_count - 2] == 'O' &&
	    chip->uart_input[chip->uart_input_count - 1] == 'K') {
		FUNC0(chip->card->dev, "message from HDMI chip received:\n");
		FUNC1("", DUMP_PREFIX_OFFSET,
				     chip->uart_input, chip->uart_input_count);
		chip->uart_input_count = 0;
	}
}
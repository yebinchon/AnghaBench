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
struct l3_pins {int /*<<< orphan*/  clock_high; int /*<<< orphan*/  (* setclk ) (struct l3_pins*,int) ;int /*<<< orphan*/  data_setup; int /*<<< orphan*/  (* setdat ) (struct l3_pins*,unsigned int) ;int /*<<< orphan*/  data_hold; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct l3_pins*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct l3_pins*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct l3_pins*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct l3_pins *adap, unsigned int byte)
{
	int i;

	for (i = 0; i < 8; i++) {
		adap->setclk(adap, 0);
		FUNC3(adap->data_hold);
		adap->setdat(adap, byte & 1);
		FUNC3(adap->data_setup);
		adap->setclk(adap, 1);
		FUNC3(adap->clock_high);
		byte >>= 1;
	}
}
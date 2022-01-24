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
typedef  int /*<<< orphan*/  u8 ;
struct l3_pins {int /*<<< orphan*/  (* setmode ) (struct l3_pins*,int) ;int /*<<< orphan*/  (* setdat ) (struct l3_pins*,int) ;int /*<<< orphan*/  (* setclk ) (struct l3_pins*,int) ;int /*<<< orphan*/  mode_hold; int /*<<< orphan*/  mode_setup; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct l3_pins*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct l3_pins*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct l3_pins*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct l3_pins*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct l3_pins*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct l3_pins*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct l3_pins*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct l3_pins*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct l3_pins*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct l3_pins *adap, u8 addr, u8 *data, int len)
{
	adap->setclk(adap, 1);
	adap->setdat(adap, 1);
	adap->setmode(adap, 1);
	FUNC9(adap->mode);

	adap->setmode(adap, 0);
	FUNC9(adap->mode_setup);
	FUNC0(adap, addr);
	FUNC9(adap->mode_hold);

	FUNC1(adap, data, len);

	adap->setclk(adap, 1);
	adap->setdat(adap, 1);
	adap->setmode(adap, 0);

	return len;
}
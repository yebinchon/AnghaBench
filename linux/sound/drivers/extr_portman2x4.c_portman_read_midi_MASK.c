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
struct portman {int dummy; } ;

/* Variables and functions */
 int ESTB ; 
 int INT_EN ; 
 int RXAVAIL ; 
 unsigned char STROBE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct portman*) ; 
 int /*<<< orphan*/  FUNC2 (struct portman*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct portman*,int) ; 

__attribute__((used)) static int FUNC4(struct portman *pm, int port)
{
	unsigned char midi_data = 0;
	unsigned char cmdout;	/* Saved address+IE bit. */

	/* Make sure clocking edge is down before starting... */
	FUNC3(pm, 0);	/* Make sure edge is down. */

	/* Set destination address to PCP. */
	cmdout = (port << 1) | INT_EN;	/* Address + IE + No Strobe. */
	FUNC2(pm, cmdout);

	while ((FUNC1(pm) & ESTB) == ESTB)
		FUNC0();	/* Wait for strobe echo. */

	/* After the address lines settle, check multiplexed RxAvail signal.
	 * If data is available, read it.
	 */
	if ((FUNC1(pm) & RXAVAIL) == 0)
		return -1;	/* No data. */

	/* Set the Strobe signal to enable the Rx clocking circuitry. */
	FUNC2(pm, cmdout | STROBE);	/* Write address+IE+Strobe. */

	while ((FUNC1(pm) & ESTB) == 0)
		FUNC0(); /* Wait for strobe echo. */

	/* The first data bit (msb) is already sitting on the input line. */
	midi_data = (FUNC1(pm) & 128);
	FUNC3(pm, 1);	/* Cause rising edge, which shifts data. */

	/* Data bit 6. */
	FUNC3(pm, 0);	/* Cause falling edge while data settles. */
	midi_data |= (FUNC1(pm) >> 1) & 64;
	FUNC3(pm, 1);	/* Cause rising edge, which shifts data. */

	/* Data bit 5. */
	FUNC3(pm, 0);	/* Cause falling edge while data settles. */
	midi_data |= (FUNC1(pm) >> 2) & 32;
	FUNC3(pm, 1);	/* Cause rising edge, which shifts data. */

	/* Data bit 4. */
	FUNC3(pm, 0);	/* Cause falling edge while data settles. */
	midi_data |= (FUNC1(pm) >> 3) & 16;
	FUNC3(pm, 1);	/* Cause rising edge, which shifts data. */

	/* Data bit 3. */
	FUNC3(pm, 0);	/* Cause falling edge while data settles. */
	midi_data |= (FUNC1(pm) >> 4) & 8;
	FUNC3(pm, 1);	/* Cause rising edge, which shifts data. */

	/* Data bit 2. */
	FUNC3(pm, 0);	/* Cause falling edge while data settles. */
	midi_data |= (FUNC1(pm) >> 5) & 4;
	FUNC3(pm, 1);	/* Cause rising edge, which shifts data. */

	/* Data bit 1. */
	FUNC3(pm, 0);	/* Cause falling edge while data settles. */
	midi_data |= (FUNC1(pm) >> 6) & 2;
	FUNC3(pm, 1);	/* Cause rising edge, which shifts data. */

	/* Data bit 0. */
	FUNC3(pm, 0);	/* Cause falling edge while data settles. */
	midi_data |= (FUNC1(pm) >> 7) & 1;
	FUNC3(pm, 1);	/* Cause rising edge, which shifts data. */
	FUNC3(pm, 0);	/* Return data clock low. */


	/* De-assert Strobe and return data. */
	FUNC2(pm, cmdout);	/* Output saved address+IE. */

	/* Wait for strobe echo. */
	while ((FUNC1(pm) & ESTB) == ESTB)
		FUNC0();

	return (midi_data & 255);	/* Shift back and return value. */
}
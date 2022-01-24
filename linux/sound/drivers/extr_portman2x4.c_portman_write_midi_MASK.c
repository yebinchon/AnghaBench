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
struct portman {int dummy; } ;

/* Variables and functions */
 int BUSY ; 
 int ESTB ; 
 int INT_EN ; 
 int STROBE ; 
 int TXEMPTY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct portman*) ; 
 int /*<<< orphan*/  FUNC2 (struct portman*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct portman*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct portman *pm, 
			       int port, u8 mididata)
{
	int command = ((port + 4) << 1);

	/* Get entering data byte and port number in BL and BH respectively.
	 * Set up Tx Channel address field for use with PP Cmd Register.
	 * Store address field in BH register.
	 * Inputs:      AH = Output port number (0..3).
	 *              AL = Data byte.
	 *    command = TXDATA0 | INT_EN;
	 * Align port num with address field (b1...b3),
	 * set address for TXDatax, Strobe=0
	 */
	command |= INT_EN;

	/* Disable interrupts so that the process is not interrupted, then 
	 * write the address associated with the current Tx channel to the 
	 * PP Command Reg.  Do not set the Strobe signal yet.
	 */

	do {
		FUNC2(pm, command);

		/* While the address lines settle, write parallel output data to 
		 * PP Data Reg.  This has no effect until Strobe signal is asserted.
		 */

		FUNC3(pm, mididata);
		
		/* If PCP channel's TxEmpty is set (TxEmpty is read through the PP
		 * Status Register), then go write data.  Else go back and wait.
		 */
	} while ((FUNC1(pm) & TXEMPTY) != TXEMPTY);

	/* TxEmpty is set.  Maintain PC/P destination address and assert
	 * Strobe through the PP Command Reg.  This will Strobe data into
	 * the PC/P transmitter and set the PC/P BUSY signal.
	 */

	FUNC2(pm, command | STROBE);

	/* Wait for strobe line to settle and echo back through hardware.
	 * Once it has echoed back, assume that the address and data lines
	 * have settled!
	 */

	while ((FUNC1(pm) & ESTB) == 0)
		FUNC0();

	/* Release strobe and immediately re-allow interrupts. */
	FUNC2(pm, command);

	while ((FUNC1(pm) & ESTB) == ESTB)
		FUNC0();

	/* PC/P BUSY is now set.  We must wait until BUSY resets itself.
	 * We'll reenable ints while we're waiting.
	 */

	while ((FUNC1(pm) & BUSY) == BUSY)
		FUNC0();

	/* Data sent. */
}
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
struct parport {int dummy; } ;

/* Variables and functions */
 int ESTB ; 
 scalar_t__ RXDATA0 ; 
 scalar_t__ STROBE ; 
 scalar_t__ TXDATA0 ; 
 int TXEMPTY ; 
 int FUNC0 (struct parport*) ; 
 int /*<<< orphan*/  FUNC1 (struct parport*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct parport*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct parport *p)
{
	/* Initialize the parallel port data register.  Will set Rx clocks
	 * low in case we happen to be addressing the Rx ports at this time.
	 */
	/* 1 */
	FUNC2(p, 0);

	/* Initialize the parallel port command register, thus initializing
	 * hardware handshake lines to midi box:
	 *
	 *                                  Strobe = 0
	 *                                  Interrupt Enable = 0            
	 */
	/* 2 */
	FUNC1(p, 0);

	/* Check if Portman PC/P 2x4 is out there. */
	/* 3 */
	FUNC1(p, RXDATA0);	/* Write Strobe=0 to command reg. */

	/* Check for ESTB to be clear */
	/* 4 */
	if ((FUNC0(p) & ESTB) == ESTB)
		return 1;	/* CODE 1 - Strobe Failure. */

	/* Set for RXDATA0 where no damage will be done. */
	/* 5 */
	FUNC1(p, RXDATA0 + STROBE);	/* Write Strobe=1 to command reg. */

	/* 6 */
	if ((FUNC0(p) & ESTB) != ESTB)
		return 1;	/* CODE 1 - Strobe Failure. */

	/* 7 */
	FUNC1(p, 0);	/* Reset Strobe=0. */

	/* Check if Tx circuitry is functioning properly.  If initialized 
	 * unit TxEmpty is false, send out char and see if if goes true.
	 */
	/* 8 */
	FUNC1(p, TXDATA0);	/* Tx channel 0, strobe off. */

	/* If PCP channel's TxEmpty is set (TxEmpty is read through the PP
	 * Status Register), then go write data.  Else go back and wait.
	 */
	/* 9 */
	if ((FUNC0(p) & TXEMPTY) == 0)
		return 2;

	/* Return OK status. */
	return 0;
}
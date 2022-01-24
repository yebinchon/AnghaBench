#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int condition; scalar_t__ modulus; scalar_t__ n2count; } ;
typedef  TYPE_1__ ax25_cb ;

/* Variables and functions */
 int /*<<< orphan*/  AX25_COMMAND ; 
 scalar_t__ AX25_MODULUS ; 
 int /*<<< orphan*/  AX25_POLLON ; 
 int /*<<< orphan*/  AX25_SABM ; 
 int /*<<< orphan*/  AX25_SABME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(ax25_cb *ax25)
{
	ax25->condition = 0x00;
	ax25->n2count   = 0;

	if (ax25->modulus == AX25_MODULUS)
		FUNC1(ax25, AX25_SABM, AX25_POLLON, AX25_COMMAND);
	else
		FUNC1(ax25, AX25_SABME, AX25_POLLON, AX25_COMMAND);

	FUNC0(ax25);
	FUNC3(ax25);
	FUNC5(ax25);
	FUNC4(ax25);
	FUNC2(ax25);
}
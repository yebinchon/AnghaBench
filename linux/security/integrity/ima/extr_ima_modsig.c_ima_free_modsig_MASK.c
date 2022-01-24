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
struct modsig {int /*<<< orphan*/  pkcs7_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct modsig*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct modsig *modsig)
{
	if (!modsig)
		return;

	FUNC1(modsig->pkcs7_msg);
	FUNC0(modsig);
}
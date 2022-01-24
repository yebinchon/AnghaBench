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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC2(uint8_t *pkt, uint32_t pkt_caplen, uint32_t pkt_len)
{
	if (pkt_caplen != pkt_len)
		FUNC1("cap: %u, len: %u\n", pkt_caplen, pkt_len);
	else
		FUNC1("len: %u\n", pkt_len);

	FUNC0(pkt, pkt_caplen);
}
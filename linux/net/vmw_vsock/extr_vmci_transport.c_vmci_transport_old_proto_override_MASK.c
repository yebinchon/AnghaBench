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

/* Variables and functions */
 int PROTOCOL_OVERRIDE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static bool FUNC1(bool *old_pkt_proto)
{
	if (PROTOCOL_OVERRIDE != -1) {
		if (PROTOCOL_OVERRIDE == 0)
			*old_pkt_proto = true;
		else
			*old_pkt_proto = false;

		FUNC0("Proto override in use\n");
		return true;
	}

	return false;
}
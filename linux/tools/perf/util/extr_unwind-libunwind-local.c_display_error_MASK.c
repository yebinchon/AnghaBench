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
#define  UNW_EBADREG 130 
#define  UNW_EINVAL 129 
#define  UNW_EUNSPEC 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(int err)
{
	switch (err) {
	case UNW_EINVAL:
		FUNC0("unwind: Only supports local.\n");
		break;
	case UNW_EUNSPEC:
		FUNC0("unwind: Unspecified error.\n");
		break;
	case UNW_EBADREG:
		FUNC0("unwind: Register unavailable.\n");
		break;
	default:
		break;
	}
}
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
#define  TPACKET_V1 130 
#define  TPACKET_V2 129 
#define  TPACKET_V3 128 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static inline void FUNC3(void *base, int version)
{
	switch (version) {
	case TPACKET_V1:
		FUNC0(base);
		break;
	case TPACKET_V2:
		FUNC1(base);
		break;
	case TPACKET_V3:
		FUNC2(base);
		break;
	}
}
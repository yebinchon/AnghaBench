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
 int FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static inline int FUNC4(void *base, int version)
{
	switch (version) {
	case TPACKET_V1:
		return FUNC0(base);
	case TPACKET_V2:
		return FUNC1(base);
	case TPACKET_V3:
		return FUNC2(base);
	default:
		FUNC3(1);
		return 0;
	}
}
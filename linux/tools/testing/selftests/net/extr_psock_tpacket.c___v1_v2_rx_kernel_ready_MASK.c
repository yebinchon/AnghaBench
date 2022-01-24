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
#define  TPACKET_V1 129 
#define  TPACKET_V2 128 
 int FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(void *base, int version)
{
	switch (version) {
	case TPACKET_V1:
		return FUNC0(base);
	case TPACKET_V2:
		return FUNC1(base);
	default:
		FUNC2(1);
		return 0;
	}
}
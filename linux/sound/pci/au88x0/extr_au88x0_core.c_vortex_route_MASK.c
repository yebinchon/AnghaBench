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
typedef  int /*<<< orphan*/  vortex_t ;
typedef  unsigned char ADBRamLink ;

/* Variables and functions */
 unsigned char ADB_MASK ; 
 unsigned char ADB_SHIFT ; 
 unsigned char NR_MIXOUT ; 
 unsigned char NR_SRC ; 
 unsigned char OFFSET_MIXOUT ; 
 unsigned char OFFSET_SRCOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char,unsigned char) ; 

__attribute__((used)) static void
FUNC6(vortex_t * vortex, int en, unsigned char channel,
	     unsigned char source, unsigned char dest)
{
	ADBRamLink route;

	route = ((source & ADB_MASK) << ADB_SHIFT) | (dest & ADB_MASK);
	if (en) {
		FUNC0(vortex, channel, &route, 1);
		if ((source < (OFFSET_SRCOUT + NR_SRC))
		    && (source >= OFFSET_SRCOUT))
			FUNC4(vortex, (source - OFFSET_SRCOUT),
					  channel);
		else if ((source < (OFFSET_MIXOUT + NR_MIXOUT))
			 && (source >= OFFSET_MIXOUT))
			FUNC2(vortex,
					    (source - OFFSET_MIXOUT), channel);
	} else {
		FUNC1(vortex, channel, route, route);
		if ((source < (OFFSET_SRCOUT + NR_SRC))
		    && (source >= OFFSET_SRCOUT))
			FUNC5(vortex, (source - OFFSET_SRCOUT),
					  channel);
		else if ((source < (OFFSET_MIXOUT + NR_MIXOUT))
			 && (source >= OFFSET_MIXOUT))
			FUNC3(vortex,
					    (source - OFFSET_MIXOUT), channel);
	}
}
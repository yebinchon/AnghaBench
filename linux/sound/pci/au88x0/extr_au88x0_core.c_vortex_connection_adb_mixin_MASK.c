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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,unsigned char,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(vortex_t * vortex, int en,
			    unsigned char channel, unsigned char source,
			    unsigned char mixin)
{
	FUNC1(vortex, en, channel, source, FUNC0(mixin));
}
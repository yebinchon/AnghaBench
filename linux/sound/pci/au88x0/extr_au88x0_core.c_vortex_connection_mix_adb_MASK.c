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
 int /*<<< orphan*/  MIX_DEFOGAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,unsigned char,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void
FUNC3(vortex_t * vortex, int en, unsigned char ch,
			  unsigned char mix, unsigned char dest)
{
	FUNC2(vortex, en, ch, FUNC0(mix), dest);
	FUNC1(vortex, mix, MIX_DEFOGAIN);	// added to original code.
}
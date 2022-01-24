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
 int /*<<< orphan*/  FUNC0 (char const*,int,unsigned int) ; 
 scalar_t__ FUNC1 (char const*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,char*) ; 
 unsigned int FUNC3 (char const*,int) ; 

__attribute__((used)) static void FUNC4(const char *m, int slen)
{
	unsigned int hash = FUNC3(m, slen);

	if (FUNC1(m, slen, hash))
	    return;

	FUNC0(m, slen, hash);
	FUNC2(m, slen, "include/config");
}
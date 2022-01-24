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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  NBITS ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 
 unsigned long* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static int FUNC5(const char *str)
{
	unsigned long *bm = FUNC2(str, NBITS);
	char buf[100];
	int ret;

	FUNC0(bm, NBITS, buf, sizeof(buf));
	FUNC3("bitmap: %s\n", buf);

	ret = !FUNC4(buf, str);
	FUNC1(bm);
	return ret;
}
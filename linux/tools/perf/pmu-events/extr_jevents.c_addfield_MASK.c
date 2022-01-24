#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int start; } ;
typedef  TYPE_1__ jsmntok_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void FUNC5(char *map, char **dst, const char *sep,
		     const char *a, jsmntok_t *bt)
{
	unsigned int len = FUNC3(a) + 1 + FUNC3(sep);
	int olen = *dst ? FUNC3(*dst) : 0;
	int blen = bt ? FUNC0(bt) : 0;
	char *out;

	out = FUNC1(*dst, len + olen + blen);
	if (!out) {
		/* Don't add field in this case */
		return;
	}
	*dst = out;

	if (!olen)
		*(*dst) = 0;
	else
		FUNC2(*dst, sep);
	FUNC2(*dst, a);
	if (bt)
		FUNC4(*dst, map + bt->start, blen);
}
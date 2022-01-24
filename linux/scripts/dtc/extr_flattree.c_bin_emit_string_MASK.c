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
struct data {int dummy; } ;

/* Variables and functions */
 struct data FUNC0 (struct data,char) ; 
 struct data FUNC1 (struct data,char const*,int) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(void *e, const char *str, int len)
{
	struct data *dtbuf = e;

	if (len == 0)
		len = FUNC2(str);

	*dtbuf = FUNC1(*dtbuf, str, len);
	*dtbuf = FUNC0(*dtbuf, '\0');
}
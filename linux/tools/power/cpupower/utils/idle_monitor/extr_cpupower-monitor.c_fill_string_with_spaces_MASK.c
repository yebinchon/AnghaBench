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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 

int FUNC5(char *s, int n)
{
	char *temp;
	int len = FUNC4(s);

	if (len >= n)
		return -1;

	temp = FUNC1(sizeof(char) * (n+1));
	for (; len < n; len++)
		s[len] = ' ';
	s[len] = '\0';
	FUNC2(temp, n+1, " %s", s);
	FUNC3(s, temp);
	FUNC0(temp);
	return 0;
}
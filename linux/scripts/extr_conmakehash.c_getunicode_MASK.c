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
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(char **p0)
{
  char *p = *p0;

  while (*p == ' ' || *p == '\t')
    p++;
  if (*p != 'U' || p[1] != '+' ||
      !FUNC0(p[2]) || !FUNC0(p[3]) || !FUNC0(p[4]) ||
      !FUNC0(p[5]) || FUNC0(p[6]))
    return -1;
  *p0 = p+6;
  return FUNC1(p+2,0,16);
}
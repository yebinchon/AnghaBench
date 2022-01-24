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
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*,char const*,size_t) ; 
 scalar_t__ FUNC2 (char const*,size_t) ; 

void FUNC3(struct audit_buffer *ab, const char *string,
				 size_t len)
{
	if (FUNC2(string, len))
		FUNC0(ab, string, len);
	else
		FUNC1(ab, string, len);
}
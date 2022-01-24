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
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*,char*) ; 

__attribute__((used)) static void FUNC1(struct buffer *b)
{
	FUNC0(b, "\n#ifdef CONFIG_RETPOLINE\n");
	FUNC0(b, "MODULE_INFO(retpoline, \"Y\");\n");
	FUNC0(b, "#endif\n");
}
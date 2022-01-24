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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  s8 ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  s16 ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(char *type)
{
	int size = 0;

	if (FUNC0(type, "s64") == 0)
		size = sizeof(s64);
	else if (FUNC0(type, "u64") == 0)
		size = sizeof(u64);
	else if (FUNC0(type, "s32") == 0)
		size = sizeof(s32);
	else if (FUNC0(type, "u32") == 0)
		size = sizeof(u32);
	else if (FUNC0(type, "s16") == 0)
		size = sizeof(s16);
	else if (FUNC0(type, "u16") == 0)
		size = sizeof(u16);
	else if (FUNC0(type, "s8") == 0)
		size = sizeof(s8);
	else if (FUNC0(type, "u8") == 0)
		size = sizeof(u8);
	else if (FUNC0(type, "char") == 0)
		size = sizeof(char);
	else if (FUNC0(type, "unsigned char") == 0)
		size = sizeof(unsigned char);
	else if (FUNC0(type, "int") == 0)
		size = sizeof(int);
	else if (FUNC0(type, "unsigned int") == 0)
		size = sizeof(unsigned int);
	else if (FUNC0(type, "long") == 0)
		size = sizeof(long);
	else if (FUNC0(type, "unsigned long") == 0)
		size = sizeof(unsigned long);
	else if (FUNC0(type, "pid_t") == 0)
		size = sizeof(pid_t);
	else if (FUNC0(type, "gfp_t") == 0)
		size = sizeof(gfp_t);
	else if (FUNC1(type))
		size = FUNC2(type);

	return size;
}
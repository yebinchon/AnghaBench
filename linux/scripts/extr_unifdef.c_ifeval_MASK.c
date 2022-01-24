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
typedef  int Linetype ;

/* Variables and functions */
 int LT_ERROR ; 
 int LT_IF ; 
 int constexpr ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  eval_ops ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,char const**) ; 
 scalar_t__ killconsts ; 

__attribute__((used)) static Linetype
FUNC2(const char **cpp)
{
	int ret;
	int val = 0;

	FUNC0("eval %s", *cpp);
	constexpr = killconsts ? false : true;
	ret = FUNC1(eval_ops, &val, cpp);
	FUNC0("eval = %d", val);
	return (constexpr ? LT_IF : ret == LT_ERROR ? LT_IF : ret);
}
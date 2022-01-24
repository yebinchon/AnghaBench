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
typedef  int time64_t ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  scalar_t__ __u8 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC2(char *buf, __le32 lo, __u8 hi)
{
	return FUNC1(buf, PAGE_SIZE, "%lld",
			((time64_t)hi << 32) + FUNC0(lo));
}
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
struct rtgenmsg {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(void)
{
	return FUNC0(sizeof(struct rtgenmsg))
	       + FUNC1(sizeof(s32)) /* NETNSA_NSID */
	       + FUNC1(sizeof(s32)) /* NETNSA_CURRENT_NSID */
	       ;
}
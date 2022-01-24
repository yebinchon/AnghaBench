#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ from; scalar_t__ to; } ;
typedef  TYPE_1__ substring_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

char *FUNC1(const substring_t *s)
{
	return FUNC0(s->from, s->to - s->from, GFP_KERNEL);
}
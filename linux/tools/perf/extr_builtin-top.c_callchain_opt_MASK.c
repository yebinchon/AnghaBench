#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct option {int dummy; } ;
struct TYPE_2__ {int use_callchain; } ;

/* Variables and functions */
 int FUNC0 (struct option const*,char const*,int) ; 
 TYPE_1__ symbol_conf ; 

__attribute__((used)) static int
FUNC1(const struct option *opt, const char *arg, int unset)
{
	symbol_conf.use_callchain = true;
	return FUNC0(opt, arg, unset);
}
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
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,int const) ; 
 TYPE_1__* FUNC2 () ; 

__attribute__((used)) static bool FUNC3(const char *domainname)
{
	const char *namespace = FUNC2()->name;
	const int len = FUNC0(namespace);

	return FUNC1(domainname, namespace, len) ||
		(domainname[len] && domainname[len] != ' ');
}
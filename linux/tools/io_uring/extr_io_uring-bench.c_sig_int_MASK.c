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
struct TYPE_2__ {int finish; } ;

/* Variables and functions */
 int finish ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 TYPE_1__* submitters ; 

__attribute__((used)) static void FUNC1(int sig)
{
	FUNC0("Exiting on signal %d\n", sig);
	submitters[0].finish = 1;
	finish = 1;
}
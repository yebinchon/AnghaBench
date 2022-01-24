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
struct inetpeer_addr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inetpeer_addr const*,struct inetpeer_addr const*) ; 

__attribute__((used)) static bool FUNC1(const struct inetpeer_addr *a,
		      const struct inetpeer_addr *b)
{
	return FUNC0(a, b) == 0;
}
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
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IP_HASHBITS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr const*) ; 

__attribute__((used)) static inline int FUNC2(const struct in6_addr *ip)
{
	return FUNC0(FUNC1(ip), IP_HASHBITS);
}
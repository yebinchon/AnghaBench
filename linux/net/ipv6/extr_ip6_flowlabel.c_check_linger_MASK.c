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

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 unsigned long FL_MAX_LINGER ; 
 unsigned long FL_MIN_LINGER ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC1(unsigned long ttl)
{
	if (ttl < FL_MIN_LINGER)
		return FL_MIN_LINGER*HZ;
	if (ttl > FL_MAX_LINGER && !FUNC0(CAP_NET_ADMIN))
		return 0;
	return ttl*HZ;
}
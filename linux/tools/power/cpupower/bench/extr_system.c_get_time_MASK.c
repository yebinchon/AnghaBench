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
struct timeval {long long tv_sec; scalar_t__ tv_usec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 

long long int FUNC1()
{
	struct timeval now;

	FUNC0(&now, NULL);

	return (long long int)(now.tv_sec * 1000000LL + now.tv_usec);
}
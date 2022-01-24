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
typedef  int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s64 FUNC1(s64 timediff, s64 slope)
{
	return FUNC0(timediff * slope, NSEC_PER_SEC);
}
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
struct ifaddrmsg {int dummy; } ;
struct ifa_cacheinfo {int dummy; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static size_t FUNC2(void)
{
	return FUNC0(sizeof(struct ifaddrmsg))
	       + FUNC1(4) /* IFA_ADDRESS */
	       + FUNC1(4) /* IFA_LOCAL */
	       + FUNC1(4) /* IFA_BROADCAST */
	       + FUNC1(IFNAMSIZ) /* IFA_LABEL */
	       + FUNC1(4)  /* IFA_FLAGS */
	       + FUNC1(4)  /* IFA_RT_PRIORITY */
	       + FUNC1(sizeof(struct ifa_cacheinfo)); /* IFA_CACHEINFO */
}
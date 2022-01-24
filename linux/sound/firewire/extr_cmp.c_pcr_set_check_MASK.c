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
struct cmp_connection {int dummy; } ;
typedef  int __be32 ;

/* Variables and functions */
 int EBUSY ; 
 int ECONNREFUSED ; 
 int PCR_BCAST_CONN ; 
 int PCR_ONLINE ; 
 int PCR_P2P_CONN_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct cmp_connection*,char*) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct cmp_connection *c, __be32 pcr)
{
	if (pcr & FUNC1(PCR_BCAST_CONN |
			      PCR_P2P_CONN_MASK)) {
		FUNC0(c, "plug is already in use\n");
		return -EBUSY;
	}
	if (!(pcr & FUNC1(PCR_ONLINE))) {
		FUNC0(c, "plug is not on-line\n");
		return -ECONNREFUSED;
	}

	return 0;
}
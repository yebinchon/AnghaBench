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
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {unsigned int platform_labels; } ;
struct net {TYPE_1__ mpls; } ;

/* Variables and functions */
 unsigned int MPLS_LABEL_FIRST_UNRESERVED ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 

__attribute__((used)) static bool FUNC2(struct net *net, unsigned int *index,
			  struct netlink_ext_ack *extack)
{
	bool is_ok = true;

	/* Reserved labels may not be set */
	if (*index < MPLS_LABEL_FIRST_UNRESERVED) {
		FUNC0(extack,
			       "Invalid label - must be MPLS_LABEL_FIRST_UNRESERVED or higher");
		is_ok = false;
	}

	/* The full 20 bit range may not be supported. */
	if (is_ok && *index >= net->mpls.platform_labels) {
		FUNC0(extack,
			       "Label >= configured maximum in platform_labels");
		is_ok = false;
	}

	*index = FUNC1(*index, net->mpls.platform_labels);
	return is_ok;
}
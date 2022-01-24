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
struct net_device {int dummy; } ;
typedef  enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  TC_SETUP_CLSMATCHALL 128 
 int FUNC0 (struct net_device*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(enum tc_setup_type type, void *type_data,
				       void *cb_priv, bool ingress)
{
	struct net_device *dev = cb_priv;

	if (!FUNC1(dev))
		return -EOPNOTSUPP;

	switch (type) {
	case TC_SETUP_CLSMATCHALL:
		return FUNC0(dev, type_data, ingress);
	default:
		return -EOPNOTSUPP;
	}
}
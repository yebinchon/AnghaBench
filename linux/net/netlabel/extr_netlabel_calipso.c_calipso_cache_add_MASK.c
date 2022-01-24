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
struct netlbl_lsm_secattr {int dummy; } ;
struct netlbl_calipso_ops {int (* cache_add ) (unsigned char const*,struct netlbl_lsm_secattr const*) ;} ;

/* Variables and functions */
 int ENOMSG ; 
 struct netlbl_calipso_ops* FUNC0 () ; 
 int FUNC1 (unsigned char const*,struct netlbl_lsm_secattr const*) ; 

int FUNC2(const unsigned char *calipso_ptr,
		      const struct netlbl_lsm_secattr *secattr)

{
	int ret_val = -ENOMSG;
	const struct netlbl_calipso_ops *ops = FUNC0();

	if (ops)
		ret_val = ops->cache_add(calipso_ptr, secattr);
	return ret_val;
}
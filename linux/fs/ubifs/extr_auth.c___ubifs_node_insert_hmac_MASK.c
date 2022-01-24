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
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ubifs_info const*,void*,int,int,void*) ; 

int FUNC1(const struct ubifs_info *c, void *node, int len,
			    int ofs_hmac)
{
	return FUNC0(c, node, len, ofs_hmac, node + ofs_hmac);
}
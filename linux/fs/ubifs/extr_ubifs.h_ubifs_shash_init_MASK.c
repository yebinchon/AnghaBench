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
struct shash_desc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct shash_desc*) ; 
 scalar_t__ FUNC1 (struct ubifs_info const*) ; 

__attribute__((used)) static inline int FUNC2(const struct ubifs_info *c,
				   struct shash_desc *desc)
{
	if (FUNC1(c))
		return FUNC0(desc);
	else
		return 0;
}
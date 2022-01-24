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
typedef  scalar_t__ u64 ;
struct the_nilfs {scalar_t__ ns_sbwtime; scalar_t__ ns_sb_update_freq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static inline int FUNC1(struct the_nilfs *nilfs)
{
	u64 t = FUNC0();

	return t < nilfs->ns_sbwtime ||
		t > nilfs->ns_sbwtime + nilfs->ns_sb_update_freq;
}
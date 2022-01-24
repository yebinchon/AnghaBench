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
struct dentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_nlink; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 

__attribute__((used)) static inline bool FUNC2(struct dentry *dentry)
{
	if (FUNC1(dentry) && FUNC0(dentry)->i_nlink == 0)
		return 1;
	return 0;
}
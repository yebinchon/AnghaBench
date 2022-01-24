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
struct kernfs_node {int dummy; } ;
struct kernfs_iattrs {int dummy; } ;

/* Variables and functions */
 struct kernfs_iattrs* FUNC0 (struct kernfs_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct kernfs_iattrs *FUNC1(struct kernfs_node *kn)
{
	return FUNC0(kn, 0);
}
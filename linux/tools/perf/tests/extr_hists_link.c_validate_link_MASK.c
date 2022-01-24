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
struct hists {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hists*,int) ; 

__attribute__((used)) static int FUNC1(struct hists *leader, struct hists *other)
{
	return FUNC0(leader, 0) || FUNC0(other, 1);
}
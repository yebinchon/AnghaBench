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
struct page {int dummy; } ;
struct gssx_arg_accept_sec_context {int /*<<< orphan*/  pages; int /*<<< orphan*/  npages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NGROUPS_MAX ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gssx_arg_accept_sec_context *arg)
{
	arg->npages = FUNC0(NGROUPS_MAX * 4, PAGE_SIZE);
	arg->pages = FUNC1(arg->npages, sizeof(struct page *), GFP_KERNEL);
	/*
	 * XXX: actual pages are allocated by xdr layer in
	 * xdr_partial_copy_from_skb.
	 */
	if (!arg->pages)
		return -ENOMEM;
	return 0;
}
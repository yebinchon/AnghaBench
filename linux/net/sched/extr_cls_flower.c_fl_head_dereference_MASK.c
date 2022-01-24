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
struct tcf_proto {int /*<<< orphan*/  root; } ;
struct cls_fl_head {int dummy; } ;

/* Variables and functions */
 struct cls_fl_head* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cls_fl_head *FUNC1(struct tcf_proto *tp)
{
	/* Flower classifier only changes root pointer during init and destroy.
	 * Users must obtain reference to tcf_proto instance before calling its
	 * API, so tp->root pointer is protected from concurrent call to
	 * fl_destroy() by reference counting.
	 */
	return FUNC0(tp->root);
}
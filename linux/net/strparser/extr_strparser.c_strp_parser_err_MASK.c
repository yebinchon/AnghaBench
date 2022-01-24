#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* abort_parser ) (struct strparser*,int) ;} ;
struct strparser {TYPE_1__ cb; int /*<<< orphan*/ * skb_head; } ;
struct TYPE_5__ {int error; } ;
typedef  TYPE_2__ read_descriptor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct strparser*,int) ; 

__attribute__((used)) static void FUNC2(struct strparser *strp, int err,
			    read_descriptor_t *desc)
{
	desc->error = err;
	FUNC0(strp->skb_head);
	strp->skb_head = NULL;
	strp->cb.abort_parser(strp, err);
}
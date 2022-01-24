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
typedef  struct sk_buff const sk_buff ;
struct TYPE_2__ {int /*<<< orphan*/  gso_type; int /*<<< orphan*/  gso_segs; int /*<<< orphan*/  gso_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff const*,struct sk_buff const*) ; 
 TYPE_1__* FUNC1 (struct sk_buff const*) ; 

void FUNC2(struct sk_buff *new, const struct sk_buff *old)
{
	FUNC0(new, old);

	FUNC1(new)->gso_size = FUNC1(old)->gso_size;
	FUNC1(new)->gso_segs = FUNC1(old)->gso_segs;
	FUNC1(new)->gso_type = FUNC1(old)->gso_type;
}